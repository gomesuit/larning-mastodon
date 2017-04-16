#!/bin/bash


wget -qO- https://get.docker.com/ | sh
systemctl start docker


usermod -aG docker vagrant



curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose



yum install -y git
git clone https://github.com/tootsuite/mastodon.git
cd mastodon

docker-compose build




#docker-compose run --rm web rake secret
#PAPERCLIP_SECRET
#SECRET_KEY_BASE
#OTP_SECRET

