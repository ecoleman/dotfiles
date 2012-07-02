
source ~/.bash/config
source ~/.bash/functions
source ~/.bash/aliases
source ~/.bash/completions

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

