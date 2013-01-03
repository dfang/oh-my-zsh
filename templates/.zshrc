# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="gozilla"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="kolo"
ZSH_THEME='frisk'

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git rvm brew bundler cap gem rails3 ruby vagrant autojump)

source $ZSH/oh-my-zsh.sh

# disable auto-correct
unsetopt correct_all

export EDITOR=vi
export BUNDLER_EDITOR=subl

source ~/.aliases

# Customize to your needs...
PATH=$HOME/bin:$PATH:/usr/local/sbin:$HOME/.rvm/bin # Add RVM to PATH for scripting
