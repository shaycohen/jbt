#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y install apt-transport-https ca-certificates software-properties-common curl
wget https://download.docker.com/linux/debian/gpg 
sudo apt-key add gpg
unlink gpg
sudo add-apt-repository "deb https://download.docker.com/linux/debian stretch stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce
sudo usermod -aG docker vagrant

sudo systemctl start docker
sudo systemctl enable docker

sudo docker version

# sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose

# docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:10
# docker run -p 8069:8069 --name odoo --link db:db -t odoo

