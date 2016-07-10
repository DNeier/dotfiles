export EDITOR=vim

if [ -e /usr/share/terminfo/x/xterm-256color ] && [ "$COLORTERM" == "xfce4-terminal" ]; then
  export TERM=xterm-256color
fi

BASE16_SHELL="$HOME/.config/base16-shell/base16-gooey.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

alias ls='ls --color=auto'
alias hangups='hangups --col-scheme solarized-dark'
alias shutdown='sudo shutdown -h now'
alias pacman='sudo pacman'

#source /usr/share/doc/pkgfile/command-not-found.bash

eval "$(rbenv init -)"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
