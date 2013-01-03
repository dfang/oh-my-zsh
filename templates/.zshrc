# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="gozilla"
# ZSH_THEME="robbyrussell"
ZSH_THEME="kolo"
# ZHS_THEME='cloud'

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

HISTSIZE=20000
SAVEHIST=2000

# plugins
plugins=(git rvm brew bundler cap gem rails3 ruby vagrant autojump)

source $ZSH/oh-my-zsh.sh

# disable auto-correct
unsetopt correct_all

# Customize to your needs...
PATH=$HOME/bin:$PATH:/usr/local/sbin:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR=vi
export BUNDLER_EDITOR=subl

source ~/.aliases
