#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
source /usr/share/doc/find-the-command/ftc.bash
alias pacman="sudo pacman"
alias git_re="git remote -v show"
alias untar="tar -xf"
alias dmesg="sudo dmesg"
alias gitui="gitui -t mocha.ron"
alias vi="vim"
export PATH=/home/i3riced/bin/:$PATH
export EDITOR="vim"

#export PS1='\[\033[0m\]\[\033[1\;34m\]Arch\033[0m] \033[0;36m\u \033[1;37m\w \033[0;34m\A \033[1;35m> \033[0m'
# export PS1='\[\033[1;36m\][\[\033[1;34m\]Arch\[\033[1;34m\]]\[\033[1;36m\] \u\[\033[1;37m\] \w\[\033[1;34m\] \A\[\033[1;35m\] -> \[\033[0m\]'

export PS1=' \[\033[1;34m\]\W \[\033[1;33m\]\[\033[1;36m\] -> \[\033[0m\]'

#neofetch | lolcat
# neofetch
# fastfetch
pfetch
# pfetch | lolcat

function my_clear() {
    clear
    pfetch
}

bind -x '"\C-l": my_clear'
