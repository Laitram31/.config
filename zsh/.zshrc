# Created by newuser for 5.9
curl -s https://zeus.ionis-it.com/api/group/428/ics/EOVYjD9jk5 >/tmp/calendar.ics
icstocal /tmp/calendar.ics /tmp/calendar >/dev/null
flashfetch
quand


[ -f "$ZDOTDIR/paliasrc" ] && source "$ZDOTDIR/paliasrc" # Private aliases
autoload -U colors && colors # Load colors
PS1="%B%(?.0.%F{red}%?) %F{blue}%n %F{green}%~ %f$%b "


alias ls="ls -a --color=auto"
alias shut="sudo openrc-shutdown -p now"
alias shutr="sudo openrc-shutdown -r now"
alias ins="sudo pacman -Syu"
alias uins="sudo pacman -Rns"
alias c="clear; quand"
alias poule="git pull"
alias bri5="xrandr --output eDP-1 --brightness 0.5"
alias bri6="xrandr --output eDP-1 --brightness 0.6"
alias ascii="ascii -d"
alias cf="$HOME/.config/"
alias cspt="$HOME/.config/scripts"
alias cz="$HOME/.config/zsh"
alias cn="$XDG_CONFIG_HOME/nvim"
alias gs="git status"
alias rps="echo help | nc ratakor.com 9998"
alias nv="nvim"
alias cdmnt="sudo mount -t iso9660 -o ro /dev/sr0 $HOME/cdrom"
alias py="python3"

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
