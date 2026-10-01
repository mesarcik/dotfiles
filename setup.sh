echo Install Mishas configs
misha_pkgs=(tmux vim)
sudo apt-get -y --ignore-missing install "${misha_pkgs[@]}"

git clone https://github.com/mesarcik/dotfiles /tmp/dotfiles/
cp /tmp/dotfiles/.tmux31.conf ~/.tmux.conf
cp /tmp/dotfiles/.vimrc ~/.vimrc
cp /tmp/dotfiles/.bashrc ~/.bashrc
source ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
curl -fsSL https://claude.ai/install.sh | bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc


curl -fsSL https://gh.io/copilot-install | bash
curl -fsSL https://claude.ai/install.sh | bash
