PROMPT_COLOR=35

# Case-insensitive autocompletion
bind -s 'set completion-ignore-case on'

export PS1="\[\033[${PROMPT_COLOR}m\]\w\[\033[0m\]$ "

export PATH="$HOME/bin:$PATH"

alias rm="rm -i"

