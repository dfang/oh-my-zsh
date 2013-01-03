# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="gozilla"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="kolo"
ZSH_THEME='frisk' # a theme works in ubuntu

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git rvm brew bundler cap gem rails3 ruby vagrant autojump)

source $ZSH/oh-my-zsh.sh

# disable auto-correct
unsetopt correct_all

# check if a command is available
function command_exists() { which "$1" >/dev/null 2>/dev/null }

if command_exists vim; then
  alias vi='vim'
fi

export EDITOR='vi'
export VISUAL='vi'
export PAGER='less'
export BUNDLER_EDITOR=subl
export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL" #set encoding for vim nerdtree
source ~/.aliases

# Customize to your needs...
PATH=$HOME/bin:$PATH:/usr/local/sbin:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
