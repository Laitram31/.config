# Created by newuser for 5.9
curl -s https://zeus.ionis-it.com/api/group/428/ics/EOVYjD9jk5 >/tmp/calendar.ics
$HOME/icstocal /tmp/calendar.ics /tmp/calendar >/dev/null
flashfetch
quand


autoload -U colors && colors # Load colors
PS1="%B%(?.0.%F{red}%?) %F{blue}%n %F{green}%~ %f$%b "


alias ls="ls -a --color=auto"
alias shut="sudo openrc-shutdown -p now"
alias shutr="sudo openrc-shutdown -r now"
alias ins="sudo pacman -S"
alias uins="sudo pacman -R"
alias c="clear; quand"
alias poule="git pull"

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
