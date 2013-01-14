function link_zsh_config() {
  ln -sf $ZSH/templates/zshrc ~/.zshrc
  echo '.zshrc linked to your home directory'

  ln -sf $ZSH/templates/aliases  ~/.aliases
  echo '.aliases linked to your home directory'
}

function link_vim_config() {
  ln -sf $ZSH/templates/vimrc ~/.vimrc 
  echo '.vimrc linked to your home directory'

  ln -sf $ZSH/templates/vimrc.bundles.local  ~/.vimrc.bundles.local
  echo '.vimrc.bundles.local linked to your home directory'
}

function link_rails_config() {
  ln -sf $ZSH/templates/gemrc ~/.gemrc 
  echo '.gemrc linked to your home directory'

  ln -sf $ZSH/templates/railsrc ~/.railsrc 
  echo '.railsrc linked to your home directory'

  ln -sf $ZSH/templates/irbrc ~/.irbrc
  echo '.railsrc linked to your home directory'
  
  ln -sf $ZSH/templates/irb-history ~/.irb-history
  echo '.railsrc linked to your home directory'
  
  ln -sf $ZSH/templates/railsrc ~/.railsrc
  echo '.railsrc linked to your home directory'
  
  ln -sf $ZSH/templates/pryrc ~/.pryrc
  echo '.railsrc linked to your home directory'
}

function link_git_config(){
  ln -sf $ZSH/templates/gitconfig  ~/.gitconfig
  echo '.gitconfig linked to ~/.gitconfig'
  echo 'please config your git username and email, like '
  echo "$ git config --global user.name 'John Doe'"
  echo "git config --global user.email johndoe@example.com"
}