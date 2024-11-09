docker run -p 6379:6379  -v ./redis.conf:/etc/redis/redis.conf redis:latest
# cp /etc/redis/redis.conf .
# sudo pacman -S redis-tools



docker run -p 27017:27017 mongodb/mongodb-community-server:6.0.1-ubi8

# to install the cli
# git clone https://aur.archlinux.org/mongosh-bin.git && cd mongosh-bin && makepkg -si
# cd ..
# git clone https://aur.archlinux.org/mongodb-bin.git && cd mongodb-bin/ &&makepkg -si
