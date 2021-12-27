#!/bin/bash

# Kanye West cowsay
curl -s api.kanye.rest | jq .quote | cowsay -f $(ls /usr/local/Cellar/cowsay/3.04_1/share/cows | shuf -n1) | lolcat

# enable zsh completion system
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# set vi mode
bindkey -v
export KEYTIMEOUT=1

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi
source /Users/eric.kufta/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
