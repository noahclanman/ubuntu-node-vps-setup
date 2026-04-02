#!/bin/bash
set -e

echo "Updating system..."
sudo apt purge nodejs npm -y
sudo apt autoremove -y
sudo rm -rf /usr/lib/node_modules /usr/bin/node /usr/bin/npm /usr/bin/npx
sudo apt clean
sudo apt update

echo "Installing required packages..."
sudo apt install curl ca-certificates gnupg -y

echo "Adding NodeSource repository..."
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo bash -

echo "Installing Node.js..."
sudo apt install nodejs -y

echo "Replacing broken npm with latest official npm..."
sudo rm -rf /usr/lib/node_modules/npm /usr/bin/npm /usr/bin/npx
curl -L https://www.npmjs.com/install.sh | sudo sh

echo "Installing PM2..."
sudo npm install -g pm2

echo "Installed versions:"
node -v
npm -v
pm2 -v

echo "Done."
