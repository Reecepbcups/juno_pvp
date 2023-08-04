# CosmosSDK PvP

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

sudo apt update
sudo apt-get -y upgrade

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
nvm install 20.5.0 

apt install openjdk-18-jre-headless screenfetch git make zip unzip htop screen docker.io
systemctl enable docker && systemctl start docker

echo "fs.file-max = 65535" | sudo tee -a /etc/sysctl.conf
echo "root hard nofile 150000" | sudo tee -a /etc/security/limits.conf
echo "root soft nofile 150000" | sudo tee -a /etc/security/limits.conf
echo "* hard nofile  150000" | sudo tee -a /etc/security/limits.conf
echo "* soft nofile 150000" | sudo tee -a /etc/security/limits.conf

# create SSH key to add to github (https://github.com/settings/keys)
ssh-keygen -t ed25519 -b 4096 -C "mcserver@gmail.com"

# Local Development:
# git clone git@github.com:Reecepbcups/cosmos-minecraft-integration.git
# git clone git@github.com:Reecepbcups/cosmos-duels.git

# Get the server files
git clone git@github.com:Reecepbcups/cosmossdk-minecraft-pvp-server.git pvp-1
# TODO: Download world backup curl command here & archive decode.

```
