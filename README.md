# CosmosSDK PvP

[Play Guide Walkthrough](./GUIDE.md)

CosmosSDK PvP is a soon-to-be Minecraft server launched on Juno.

The idea is as follows:

- A Duels Minecraft server (Player vs Player)
- Each player bets X amount of a token (JUNO or axlUSDC)
- These are then deposited into an escrow contract on behalf of both.
- Once both accept, they are teleported into an arena to fight.
- After the battle is over, the loser's tokens will be available for redemption from the winner.

This will be done by modifying my integration plugin found here

    https://github.com/Reecepbcups/craft/tree/master/minecraft-integration

This plugin is now in the standalone repo

    https://github.com/Reecepbcups/juno-minecraft-integration

---

## Setup Guide

(Hetzner Cloud VPS or Dedicated).

```bash
# ubuntu 22
sudo apt update
sudo apt-get -y upgrade

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install 20.5.0

echo "termcapinfo xterm* ti@:te@" > ~/.screenrc

apt install openjdk-18-jre-headless screenfetch git make zip unzip htop screen docker.io wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release maven
systemctl enable docker && systemctl start docker

git config --global user.name "Reece Williams"
git config --global user.email "reecepbcups@gmail.com"

echo "fs.file-max = 65535" | sudo tee -a /etc/sysctl.conf
echo "root hard nofile 150000" | sudo tee -a /etc/security/limits.conf
echo "root soft nofile 150000" | sudo tee -a /etc/security/limits.conf
echo "* hard nofile  150000" | sudo tee -a /etc/security/limits.conf
echo "* soft nofile 150000" | sudo tee -a /etc/security/limits.conf

# create SSH key to add to github (https://github.com/settings/keys)
ssh-keygen -t ed25519 -b 4096 -C "mcserver@gmail.com"

# Local Development:
# git clone git@github.com:Reecepbcups/cosmos-duels.git

# get the API & Craft plugins
git clone git@github.com:Reecepbcups/cosmos-minecraft-integration.git

# Get the server files
git clone git@github.com:Reecepbcups/cosmossdk-minecraft-pvp-server.git pvp-1
# TODO: Download world backup curl command here & archive decode.

# Setup redis
sudo apt install redis-server
sudo nano /etc/redis/redis.conf
# supervised no -> supervised systemd
# notify-keyspace-events "" -> notify-keyspace-events "KEA"
# # requirepass foobared -> requirepass <password>
sudo systemctl status redis

# Increase vm map count
sysctl -w vm.max_map_count=262144
echo "vm.max_map_count=262144" >> /etc/sysctl.conf


# Install MongoDB 6.x
# curl -fsSL https://www.mongodb.org/static/pgp/server-5.0.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb.gpg
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt update && sudo apt install mongodb-org
sudo systemctl enable --now mongod && sudo systemctl status mongod


# Update MongoDB access
sudo nano /etc/mongod.conf
# bindIp: 127.0.0.1 -> bindIp: 0.0.0.0
sudo systemctl stop mongod && sudo systemctl daemon-reload && sudo systemctl start mongod && sudo systemctl status mongod


# Create a user example & enable auth
mongosh
use admin
db.createUser({user:"dbaccount", pwd:"abcde", roles:[{role:"root", db:"admin"}]})
sudo nano /lib/systemd/system/mongod.service
# ExecStart=/usr/bin/mongod --quiet --auth --config /etc/mongod.conf
sudo systemctl stop mongod && sudo systemctl daemon-reload && sudo systemctl start mongod && sudo systemctl status mongod

# mongosh -u dbaccount -p --authenticationDatabase admin
# mongosh mongodb://dbaccount:password@127.0.0.1:27017/admin # URI

```