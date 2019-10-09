#Prompt directory shortening
SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last

#Histroy
SAVEHIST=1
setopt HIST_IGNORE_DUPS
HISTFILE=~/.zhistory
HISTSIZE=500

#Show virtual env prompt
plugins=(virtualenv)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

PROMPT_COMMAND="cmdline"
precmd() { eval "$PROMPT_COMMAND" }
