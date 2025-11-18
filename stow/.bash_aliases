PROMPT_COLOR=35

# Case-insensitive autocompletion
bind -s 'set completion-ignore-case on'

export PS1="\[\033[${PROMPT_COLOR}m\]\w\[\033[0m\]$ "

export PATH="$HOME/bin:$PATH"

export FZF_DEFAULT_COMMAND="rg --files"

alias rm="rm -i"

vimd() {
    local offset=${1:-"0"}
    local commit="HEAD~${offset}"
    local file=$(git diff --name-only --relative ${commit} | fzf)
    echo $file
    nvim "$file"
}
