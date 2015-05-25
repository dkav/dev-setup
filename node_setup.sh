# Setup Node development environment

# Install Node Version Manager
brew install nvm
mkdir /usr/local/var/nvm
cp $(brew --prefix nvm)/nvm-exec /usr/local/var/nvm/

# Make stable release the default
source ~/.zprofile
nvm alias default stable

# Add global packages
npm install -g topojson

