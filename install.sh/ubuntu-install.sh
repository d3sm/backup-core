curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add - &&
echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list &&
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg |  apt-key add - &&
apt install apt-transport-https &&
echo "deb https://download.sublimetext.com/ apt/stable/" |  tee /etc/apt/sources.list.d/sublime-text.list &&
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' &&
add-apt-repository ppa:jtaylor/keepass &&
curl -sL https://deb.nodesource.com/setup_13.x | bash - &&
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash &&
apt-get update &&
apt install yarn && sublime-merge && code && keepass2 && git && gedit && neovim && filezilla && nodejs && chromium-browser && firefox && puppet && virtualbox && vagrant && htop
