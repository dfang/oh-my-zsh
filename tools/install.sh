set -e

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove $ZSH if you want to install"
  exit
fi

echo "\033[0;34mCloning Oh My Zsh...\033[0m"
hash git >/dev/null 2>&1 && /usr/bin/env git clone https://github.com/dfang/oh-my-zsh.git $ZSH || {
  echo "git not installed"
  exit
}

echo "\033[0;34mBacking up old shit dot files\033[0m"
mkdir ~/.old_shit
cp ~/.zshrc ~/.old_shit/
cp ~/.aliases ~/.old_shit/
cp ~/.railsrc ~/.old_shit/
cp ~/.gemrc ~/.old_shit/
cp ~/.gitconfig ~/.old_shit/
cp ~/.vimrc ~/.old_shit
cp ~/.vimrc.bundles.local ~/.old_shit

echo "\033[0;34mCopying custom dot files\033[0m"
ln -sf ~/.oh-my-zsh/templates/zshrc  ~/.zshrc
ln -sf ~/.oh-my-zsh/templates/zsh_aliases  ~/.zsh_aliases
ln -sf ~/.oh-my-zsh/templates/gemrc  ~/.gemrc
ln -sf ~/.oh-my-zsh/templates/railsrc  ~/.railsrc
ln -sf ~/.oh-my-zsh/templates/gitconfig  ~/.gitconfig
ln -sf templates/vimrc  ~/.vimrc
ln -sf templates/vimrc.bundles.local ~/.vimrc.bundles.local

echo "$ git config --global user.name 'John Doe'"
echo "git config --global user.email johndoe@example.com"

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
sed -i -e "/export PATH=/ c\\
export PATH=\"$PATH\"
" ~/.zshrc


echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`

echo "\033[0;32m"'         __                                     __   '"\033[0m"
echo "\033[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\033[0m"
echo "\033[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\033[0m"
echo "\033[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\033[0m"
echo "\033[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\033[0m"
echo "\033[0;32m"'                        /____/                       ....is now installed!'"\033[0m"
echo "\n\n \033[0;32mPlease look over the ~/.zshrc file to select plugins, themes, and options.\033[0m"
echo "\n\n \033[0;32mp.s. Follow us at http://twitter.com/ohmyzsh.\033[0m"
/usr/bin/env zsh
. ~/.zshrc
