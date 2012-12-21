# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="gozilla"
# ZSH_THEME="kolo"
ZHS_THEME='cloud'

COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(osx git rvm brew bundler cap gem rails ruby node vagrant autojump)

# disable auto-correct
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
PATH=$HOME/bin:$PATH:/usr/local/sbin:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR=subl
export BUNDLER_EDITOR=subl

source ~/.alias

# bundle exec
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh