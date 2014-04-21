function load_theme() {
  echo "loading theme $1"
  source "$ZSH/themes/$1.zsh-theme"
}

function load_plugin() {
  if [ -f $ZSH_CUSTOM/plugins/$1/$1.plugin.zsh ]; then
    source $ZSH_CUSTOM/plugins/$1/$1.plugin.zsh
  elif [ -f $ZSH/plugins/$1/$1.plugin.zsh ]; then
    source $ZSH/plugins/$1/$1.plugin.zsh
  fi
}

