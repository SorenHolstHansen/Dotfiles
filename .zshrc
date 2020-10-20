# Auto suggestions
# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Get git branch if in git project
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ on %F{29}\1%f/'
}
setopt PROMPT_SUBST

# Style prompt
PS1='%F{yellow}%(5~|%-1~/…/%3~|%4~)%f$(parse_git_branch) %F{yellow}>%f '
