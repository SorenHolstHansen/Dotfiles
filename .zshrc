
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ on %F{29}\1%f/'
}
setopt PROMPT_SUBST

PS1='%F{yellow}%(5~|%-1~/…/%3~|%4~)%f$(parse_git_branch) > '
