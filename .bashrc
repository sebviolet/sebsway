#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# Vars
export TERMINAL="foot"
export BROWSER="brave"
export EDITOR="nvim"
export VISUAL="${EDITOR}"

fastfetch

alias mirrors='sudo reflector -c FR,DE -l 7 -f 7 -p https --sort rate --save /etc/pacman.d/mirrorlist'
alias rams='rate-mirrors --allow-root --disable-comments --protocol https arch | sudo tee /etc/pacman.d/mirrorlist'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias cleanuuup='sudo pacman -Runs $(pacman -Qttdq)'

alias give-me-azerty-fr='sudo localectl set-x11-keymap fr'
alias free='free -mt'

alias ls='eza -a --color always --icons --group-directories-first'
alias ll='eza -a -l -b --color always --icons --group-directories-first'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;31m\]\u\[\e[1;32m\]@\h\[\e[1;36m\]:\w\[\e[0m\]-$ '

eval "$(starship init bash)"

fastfetch
