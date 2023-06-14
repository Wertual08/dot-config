#! /bin/bash

FMT_RESET="\e[0m"
FMT_BOLD="\e[1m"
FMT_DIM="\e[2m"
FMT_UNBOLD="\e[22m"
FMT_UNDIM="\[\e[22m\]"
PRIMARY="\[\e[34m\]"
PROMPT="\[\e[92m\]"
USERNAME_SBG="\[\e[90m\]"
USERNAME_BG="\[\e[100m\]"
USERNAME_FG="\[\e[97m\]"
PATH_SBG="\[\e[34m\]"
PATH_BG="\[\e[44m\]"
PATH_FG="\[\e[30m\]"
FILES_SBG="\e[36m"
FILES_BG="\e[46m"
FILES_FG="\e[30m"
GIT_SBG="\e[33m"
GIT_BG="\e[43m"
GIT_FG="\e[30m"

parse_git() {
    BRANCH=$(git branch 2> /dev/null | grep -Po '(?<=\* ).+')

    if [[ $BRANCH ]]; then
        echo -e "${FILES_SBG}${GIT_BG} ${GIT_FG} $BRANCH ${FMT_RESET}${GIT_SBG}"
    else
        echo -e "${FMT_RESET}${FILES_SBG}"
    fi
}

PS1="\n${PRIMARY}╭─" 
PS1+="${USERNAME_SBG}"
PS1+="${USERNAME_BG}${PRIMARY}${FMT_BOLD} @ "
PS1+="${USERNAME_FG}\u"
PS1+="${FMT_UNBOLD} ${USERNAME_SBG}${PATH_BG} "
PS1+="${PATH_FG}\w "
PS1+="${PATH_SBG}${FILES_BG} "
PS1+="${FILES_FG}"
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type d | wc -l) "
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type f | wc -l) "
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type l | wc -l) "
PS1+="${FMT_RESET}${FILES_FBG}"
PS1+="\$(parse_git)"
PS1+="\n${FMT_RESET}${PRIMARY}╰ "
PS1+="${PROMPT}\\$ "
PS1+="${FMT_RESET}"
export PS1
