apt update -y
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update -y
apt-cache policy docker-ce
apt install docker-ce -y
# systemctl status docker

curl -L https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m) -o ~/docker-compose
mv ~/docker-compose /usr/local/bin/docker-compose 
chmod +x /usr/local/bin/docker-compose
docker-compose --version

apt -y install ansible
ansible --version

apt -y install python3-pip
yes |  pip3 install docker
yes |  pip3 install docker-compose

git clone https://github.com/ansible/awx.git
cd awx
cd installer
ansible-playbook -i inventory install.yml
