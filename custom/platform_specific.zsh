# platform-specific alias, such as subl for ubuntu and mac https://coderwall.com/p/iuxapa
if [[ $('uname') == 'Linux' ]]; then
  runst() { nohup /usr/bin/sublime-text-2 $@ > /dev/null & }
  alias subl=runst
  alias sb=runst
  # Manage packages
  alias agi='sudo apt-get install'
  alias agr='sudo apt-get remove'
  alias agu='sudo apt-get update'
  alias acs='apt-cache search' #To search the package
  alias acp='apt-cache policy' #To see the version of the installed package
  alias synaptic='gksudo synaptic'
  alias install='sudo apt-get install'
  alias update='sudo apt-get update'
  alias purge='sudo apt-get --purge remove'
  alias autoremove='sudo apt-get autoremove'
  alias autoclean='sudo apt-get autoclean'

  # alias tgz='tar -zxvf'
  # alias tbz='tar -jxvf'

  #Opens current directory in a file explorer
  alias explore='nautilus .'

  #Opens current directory in a file explorer with super user privileges
  alias suexplore='sudo nautilus .'

  # Quick edit configuration
  alias sources.list="sudo gedit /etc/apt/sources.list"
  alias menu.lst="sudo gedit /boot/grub/menu.lst"
  alias xorg.conf="sudo gedit /etc/X11/xorg.conf"

  export PLATFORM='Linux'

elif  [[ $('uname') == 'Darwin' ]]; then
  alias subl='open -a /Applications/Sublime\ Text\ 2.app'
  alias sb3='open -a /Applications/Sublime\ Text.app'
  alias sb=sb3
  export PLATFORM='MAC'
fi
