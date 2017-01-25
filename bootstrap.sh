#!/bin/bash



sudo yum update -y
sudo yum install -y epel-release
sudo yum repolist
sudo yum install -y git wget vim
sudo yum install -y ctags-etags ncurses-term ack ctags
sudo yum install -y zsh tmux

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh 
sudo chsh -s /bin/zsh vagrant	

# Change the oh my zsh default theme and set autostart tmux.
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(git tmux npm bower common-alias)/g' ~/.zshrc
sed -i '/source $ZSH\/oh-my-zsh.sh/i\ZSH_TMUX_AUTOSTART="true"\n' ~/.zshrc
sed -i '/source $ZSH\/oh-my-zsh.sh/i\ZSH_TMUX_AUTOQUIT="true"\n' ~/.zshrc
sed -i '1i export TERM="xterm-256color"' ~/.zshr



cd /home/vagrant

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | PROFILE=~/.zshrc zsh
source /home/vagrant/.zshrc

zsh

#install vim plugins

git clone https://github.com/dpalomar/dot-vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#sed -i 's/colorscheme molokai_kenan/colorscheme solarized/g' ~/.vimrc
#install nerd fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

fc-cache -vf ~/.local/share/fonts/

cd /home/vagrant

nvm install 6.9.4
nvm alias default 6.9.4

npm install -g npm
npm install -g yo bower gulp-cli grunt

sudo yum clean headers
sudo yum clean packages

sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY
cat /dev/null > ~/.zsh_history && exit

echo "*************************************************************************"
echo "***********************INSTALL COMPLETE**********************************"
echo "*************************************************************************"
echo "*                    Run vagrant ssh to start"
echo "* First time you could run next command to configure vim "
echo "*               vim +PluginInstall +qall"
echo "*"
echo "**REMEMBER:** If you like create projects with shared folders in windows"
echo "* You must run vagrant up with administrator rights"
echo "*"
echo "* To start a web project create a folder and use: yo gulp-angular or yo webapp"
echo "*"
echo "* Run exit and vagrant halt to shutdown"
echo "*************************************************************************"
echo "Author: David Palomar"
echo "*****************************ENJOY***************************************"