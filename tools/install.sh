if [ -d ~/.oh-my-zsh ]
then
  echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove ~/.oh-my-zsh if you want to install"
  exit
fi

echo "\033[0;34mCloning Oh My Zsh...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/dfang/oh-my-zsh.git ~/.oh-my-zsh || {
  echo "git not installed"
  exit
}

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32mBacking up to ~/.zshrc.pre-oh-my-zsh\033[0m";
  mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

echo "\033[0;34mUsing the Oh My Zsh custom dot files\033[0m"
cp ~/.oh-my-zsh/templates/.zshrc  ~/.zshrc
echo '.zshrc copied'
cp ~/.oh-my-zsh/templates/.alias  ~/.alias
echo '.alias copied'
cp ~/.oh-my-zsh/templates/.gemrc  ~/.gemrc
echo '.gemrc copied'
cp ~/.oh-my-zsh/templates/.railsrc  ~/.railsrc
echo '.railsrc copied'

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`

echo "\033[0;32m"'         __                                     __   '"\033[0m"
echo "\033[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\033[0m"
echo "\033[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\033[0m"
echo "\033[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\033[0m"
echo "\033[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\033[0m"
echo "\033[0;32m"'                        /____/                       '"\033[0m"



echo "Installing bundle-exec alias"
curl -L https://github.com/gma/bundler-exec/raw/master/bundler-exec.sh > ~/.bundler-exec.sh


echo "\n\n \033[0;32m....is now installed.\033[0m"
/usr/bin/env zsh
source ~/.zshrc


