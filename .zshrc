autoload colors && colors
autoload -U compinit && compinit

# Set the appearance of the prompt.
setopt promptsubst
setopt autocd autopushd

bold="$(tput bold)"
underline="$(tput smul)"
normal="$(tput sgr0)"
preexec() { print -n "$normal" }
PS1='%{$fg[red]%}------------------------------------------------------------------------------%{$reset_color%}
%{$bold%}$ '
RPROMPT="%{$fg[red]%}[%~]%{$reset_color%}"

# Suffix aliases
alias -s tex=vim

# Global aliases
alias -g Z="vim ~/.zshrc"
alias -g ZZ=". ~/.zshrc"

# Approximate completion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle -e ':completion:*:approximate:*' \
  max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# Force list for kill
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always


# cd ../<TAB> should not select parent directory.
zstyle ':completion:*:cd:*' ignore-parents parent pwd
