#!/bin/bash
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

echo "set .bashrc"
echo "" >> ~/.bashrc
echo "# oh-my-posh" >> ~/.bashrc
echo "eval \"\$(oh-my-posh init bash --config ~/.poshthemes/amro.omp.json)\"" >> ~/.bashrc
echo "" >> ~/.bashrc
