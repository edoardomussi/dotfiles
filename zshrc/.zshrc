
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' '' '' ''
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '/home/edoardomussi/.zshrc'


autoload -Uz compinit
local dump_file="${ZDOTDIR:-$HOME}/.zcompdump"

if [[ -e $dump_file ]] && ! [[ $dump_file -ot "${ZDOTDIR:-$HOME}/.zshrc" ]]; then
    compinit -u -C
else
    compinit -u
fi

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install

# Spaceship configuration
SPROMPT_ASYNC=true
if test "$TERM" != "linux"; then
    eval "$(starship init zsh)"
fi

alias la="ls -la"
alias update="sudo pacman -Syu & yay -Syu"

if [[ -o login ]] && [[ "$(tty)" == "/dev/tty1" ]] && [[ -z $DISPLAY ]] && [[ -z $WAYLAND_DISPLAY ]] ; then
   if uwsm check may-start; then
       exec uwsm start hyprland-uwsm.desktop
   fi
fi

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
