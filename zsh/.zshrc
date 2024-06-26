autoload -U colors && colors # Load colors
# SPATH=$(pwd | sed 's/\/home\/marcellus/~/' | sed 's/[^\/]*\/[^\/]*\/[^\/]*\/[^\/]*/~\/.../')
PS1=$(echo "%B%F{214}Martial %F{209}%~ %f%F{45} %f%b " | sed 's/[^\/]*\/[^\/]*\/[^\/]*\/[^\/]*/~\/.../' -E)
RPS1="%f(%B%(?.%F{green}0%f.%F{red}%?%f)%b%)"

# To do - as if I read that
cat ~/todo

# Developer Quote
curl -m 3 -s https://api.tabliss.io/v1/developer-excuses | jq .data


alias ls="ls -AhH --color=auto"
alias shut="sudo openrc-shutdown -p now"
alias shutr="sudo openrc-shutdown -r now"
alias upd="sudo pacman -Syuu; setxkbmap fr"
alias ins="sudo pacman -Syu"
alias uins="sudo pacman -Rns"
alias c="clear; cat ~/todo"

# git

alias aled="cat $XDG_CONFIG_HOME/zsh/gitHelp"
alias {clone,cloner}="git clone"
alias {tirer,tir,poule}="git pull"
alias {statut,sta}="git status"
alias {ajouter,aj}="git add"
alias {atome_de_code,ato}="git commit -m" # voir bitoduc.fr, Commit
alias {pousser,pous}="git push"
alias {poussétiquettes,poussE}="git push --follow-tags"
alias {difference,ference}="git diff"
alias tronc="git log"
alias {resto,restau}="git restore"
alias {étiquette,etiqu}="git tag"
alias branche="git branch"

alias bri5="xrandr --output eDP-1 --brightness 0.5"
alias bri6="xrandr --output eDP-1 --brightness 0.6"
alias ascii="ascii -d"
alias sudo="sudo "
alias lf="lfub"
alias vmk="v Makefile"
alias cmk="xsel -bo > Makefile"
alias cf="$HOME/.config/"
alias cspt="$HOME/.config/scripts"
alias cz="$HOME/.config/zsh"
alias czr="v $ZDOTDIR/.zshrc && source $ZDOTDIR/.zshrc"
alias cn="$XDG_CONFIG_HOME/nvim"
alias dl="$HOME/Downloads"
alias rps="echo help | nc ratakor.com 9998"
alias v="nvim"
alias cdmnt="sudo mount -t iso9660 -o ro /dev/sr0 $HOME/cdrom"
alias py="python3"
alias wtr="curl wttr.in/Lyon"
alias doc="$HOME/Documents"
alias usbmnt="sudo mount /dev/sdb1 $HOME/usb"
alias sss="ssh root@marcellus.cc"
alias ssg="ssh git@marcellus.cc"
alias mpv="xset -dpms && xset s off && mpv"
alias doc="~/Documents"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

setopt autocd

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{cyan}(%b)%f'
zstyle ':vcs_info:*' enable git

qc(){
	cc "$1" && ./a.out
}
eval $(thefuck --alias merde)
