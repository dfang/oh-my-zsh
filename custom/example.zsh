# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
# dynamic load plugins
loadplugins () {
    plugin=$1 

    if is_plugin $ZSH_CUSTOM $plugin
    then
            fpath=($ZSH_CUSTOM/plugins/$plugin $fpath) 
    elif is_plugin $ZSH $plugin
    then
            fpath=($ZSH/plugins/$plugin $fpath) 
    fi
    if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]
    then
            source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
    elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]
    then
            source $ZSH/plugins/$plugin/$plugin.plugin.zsh
    fi
}

alias load_plugin_bundler='loadplugins bundler'
alias load_plugin_brew='loadplugins brew'
alias load_plugin_git='loadplugins git'
alias load_plugin_rake='loadplugins rake'
alias load_plugin_rails='loadplugins rails3'
alias load_plugin_ruby='loadplugins ruby'
alias load_plugin_rvm='loadplugins rvm'
alias load_plugin_vagrant='loadplugins vagrant'

