__toolbox_hex() {
    if [ -f /run/.containerenv ] \
       && [ -f /run/.toolboxenv ]; then
        [ "${BASH_VERSION:-}" != "" ] &&  printf "\033[35m⬢\033[0m "
    fi
}

# User specific environment
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE
export GIT_PS1_SHOWCOLORHINTS
source /usr/share/git-core/contrib/completion/git-prompt.sh
PROMPT_COMMAND=""
declare -a PROMPT_COMMAND
#PROMPT_COMMAND+=(__toolbox_hex)
PROMPT_COMMAND+=(__vte_osc7)
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
