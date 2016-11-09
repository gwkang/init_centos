yum groupinstall "Development Tools" -y

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
