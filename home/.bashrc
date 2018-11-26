# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Default text editor
export VISUAL="nano"

# Permanent aliases
alias ls='ls -lhA --color=auto'
alias cast=mkchromecast
alias windows='VBoxManage startvm "win10-ltsb" --type gui'
alias msfconsole="msfconsole --quiet -x \"db_connect don@msf\""
alias beersmith="GTK_THEME=Adwaita:light /usr/bin/beersmith3 &"

# Temporary aliases
alias gb='cd ~/projects/gb; git pull; code .'

# ESU aliases
alias 250='cd ~/Dropbox/esu/cpsc250 && ls'
alias 250f='nautilus ~/Dropbox/esu/cpsc250 &'
alias 141='cd ~/Dropbox/esu/cpsc141 && ls'
alias 141f='nautilus ~/Dropbox/esu/cpsc141 &'

# Gnome settings
gsettings set org.gnome.SessionManager logout-prompt false
