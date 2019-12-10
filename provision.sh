#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update -y ; apt-get upgrade -y
apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt-get install docker-ce docker-ce-cli containerd.io  -y

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version

#get in oddo:
#127.0.0.1:8069 in browser

#databasename : odoo
#password: odoo
## docker-compose exec -u root odoo bash
## cd /usr/lib/python3/dist-packages/odoo

#docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:10
#docker run -p 8069:8069 --name odoo --link db:db -t odoo
