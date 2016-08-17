yum groupinstall "Development Tools" -y

# install mariadb
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum update -y
yum install mysql-server -y
cd ~
sed '/\[mysqld\]/ a collation-server=utf8_general_ci' /etc/my.cnf | sed '/\[mysqld\]/ a character-set-server=utf8' > my.cnf
cp -f my.cnf /etc/my.cnf
systemctl start mysqld

# YOU SHOULD REPLY TO SOME QUESTIONS AT THIS TIME.
mysql_secure_installation

yum install -y vim
yum install -y wget

# install redis
wget http://download.redis.io/releases/redis-3.2.3.tar.gz
tar xvf redis-3.2.3.tar.gz
cd redis-3.2.3
make
cd src
make install
cd ../utils

# YOU SHOULD REPLY TO SOME QUESTIONS AT THIS TIME.
./install_server.sh

# install nvm & some node packages
cd ~
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
source .bashrc
nvm install 6
nvm use 6
nvm alias default 6
npm install -g npm
npm install -g forever
npm install -g nodemon
npm install -g grunt-cli
npm install -g mocha
