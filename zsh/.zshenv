[ -f "$ZDOTDIR/paliasrc" ] && source "$ZDOTDIR/paliasrc" # Private aliases
[ -f "$ZDOTDIR/epitaliasrc" ] && source "$ZDOTDIR/epitaliasrc" # Private aliases

export PATH="$HOME/.config/scripts:$PATH"
export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="librewolf"
export BRIGHTNESS=1

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/data"
export XDG_PICTURES_DIR="$HOME/img"
# Following line was automatically added by arttime installer
export PATH="$HOME/.local/bin:$PATH"
