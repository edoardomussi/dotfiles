
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' '' '' ''
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '/home/edoardomussi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install

# Spaceship configuration
eval "$(starship init zsh)"

bindkey "^[[3~" delete-char
alias la="ls -la"
alias update="sudo pacman -Syu & yay -Syu"
