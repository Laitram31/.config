[ -f "$ZDOTDIR/paliasrc" ] && source "$ZDOTDIR/paliasrc" # Private aliases

curl -s $CAL_PERSO | grep -v END:VCALENDAR >/tmp/calendar.ics
curl -s $CAL_SCHOOL | grep -v BEGIN:VCALENDAR >>/tmp/calendar.ics
icstocal /tmp/calendar.ics /tmp/calendar >/dev/null
flashfetch
quand

autoload -U colors && colors # Load colors
PS1="%B%(?.0.%F{red}%?) %F{blue}%n %F{green}%~ %f$%b "


alias ls="ls -a --color=auto"
alias shut="sudo openrc-shutdown -p now"
alias shutr="sudo openrc-shutdown -r now"
alias ins="sudo pacman -Syu"
alias uins="sudo pacman -Rns"
alias c="clear; quand"

# git
alias {tirer,tir,poule}="git pull"
alias {statut,sta}="git status"
alias {ajouter,aj}="git add"
alias {atome_de_code,ato}="git commit -m" # voir bitoduc.fr, Commit
alias {pousser,pous}="git push"

alias bri5="xrandr --output eDP-1 --brightness 0.5"
alias bri6="xrandr --output eDP-1 --brightness 0.6"
alias ascii="ascii -d"
alias cf="$HOME/.config/"
alias cspt="$HOME/.config/scripts"
alias cz="$HOME/.config/zsh"
alias czr="nv $ZDOTDIR/.zshrc"
alias cn="$XDG_CONFIG_HOME/nvim"
alias rps="echo help | nc ratakor.com 9998"
alias nv="nvim"
alias cdmnt="sudo mount -t iso9660 -o ro /dev/sr0 $HOME/cdrom"
alias py="python3"
alias wtr="curl wttr.in/Lyon"
alias doc="$HOME/Documents"
alias usbmnt="sudo mount /dev/sdb1 $HOME/usb"

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
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{cyan}(%b)%f'
zstyle ':vcs_info:*' enable git

qc(){
	cc "$1" && ./a.out
}

