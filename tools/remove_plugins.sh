echo "Removing some plugins i will never use"

PLUGINS_TO_REMOVE="${PLUGINS_TO_REMOVE:-
archlinux
battery
bwana
cake
colemak
compleat
composer
svn
symfony
symfony2
virtualenvwrapper
zeus
rails
mercurial
mvn
nanoc
pass
screen
lol
laravel
jira
forklift
supervisor
systemd
terminalapp
textmate
vi-mode
}"

for CMD in $PLUGINS_TO_REMOVE; do
    if [ -d ../plugins/$CMD ]; then
        echo 'removing plugins: ' $CMD
        git rm -r ../plugins/$CMD
        # rm -rf ../plugins/$CMD
    fi
done

# autojump
# brew
# bundler
# capistrano
# cloudapp
# coffee
# command-not-found
# cp
# debian
# dircycle
# dirpersist
# encode64
# extract
# gem
# git
# git-extras
# git-flow
# git-hubflow
# git-remote-branch
# gitfast
# github
# gnu-utils
# gpg-agent
# heroku
# history
# history-substring-search
# knife
# last-working-dir
# node
# npm
# osx
# per-directory-history
# python
# rails3
# rake
# rbenv
# redis-cli
# rsync
# rvm
# ssh-agent
# sublime
# terminitor
# themes
# urltools
# vagrant