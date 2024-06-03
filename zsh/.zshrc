# in  ~/.zshenv ZDOTDIR is set
#enable colors
autoload -U colors && colors

#PROMPT="%B%K{green}%F{black}%m%f%k%b %K{red}%F{black}%~%f%k %K{white}%F{black}$%f%k "
PROMPT="%F{magenta}%~%f%F{cyan} > %f"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#basic tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vi mode
# bindkey -v 
# export KEYTIMEOUT=1
# 
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char

# source .profile file
source $HOME/.profile

#import alias
source $ZDOTDIR/zsh-alias.zsh

# github: https://github.com/zsh-users/zsh-syntax-highlighting.git
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# github: https://github.com/agkozak/zsh-z.git 
source $ZDOTDIR/plugins/zsh-z/zsh-z.plugin.zsh
# github: https://github.com/zsh-users/zsh-autosuggestions.git
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

