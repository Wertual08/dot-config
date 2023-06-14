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
GIT_DIRTY_SBG="\e[31m"
GIT_DIRTY_BG="\e[41m"
GIT_CLEAN_SBG="\e[32m"
GIT_CLEAN_BG="\e[42m"
GIT_FG="\e[30m"

parse_git() {
    STATUS="$(git status -s -b --ahead-behind --porcelain 2> /dev/null)"
    BRANCH=$(grep -m1 -Po "(?<=## ).+?(?=\\.\\.\\.)" <<< "$STATUS")
    REMOTE=$(grep -m1 -Po "(?<=\\.\\.\\.).+?(?= \\[)" <<< "$STATUS")
    AHEAD=$(grep -m1 -Po "(?<= \\[ahead )\\d+?(?=\\])" <<< "$STATUS")
    BEHIND=$(grep -m1 -Po "(?<= \\[behind )\\d+?(?=\\])" <<< "$STATUS")
    DIRTY=$(grep -m1 -Po "^ \\w .*" <<< "$STATUS")

    if [[ $BRANCH ]]; then
        if [[ $DIRTY ]]; then
            GIT="${FILES_SBG}${GIT_DIRTY_BG}"
        else
            GIT="${FILES_SBG}${GIT_CLEAN_BG}"
        fi

        GIT+=" ${GIT_FG} $BRANCH "

        if [[ $REMOTE ]]; then
            if [[ $AHEAD ]]; then
                GIT+="+${AHEAD}"
            fi
            if [[ $BEHIND ]]; then
                GIT+="-${BEHIND}"
            fi

            GIT+="> ${REMOTE} "
        fi

        if [[ $DIRTY ]]; then
            GIT_SBG="${GIT_DIRTY_SBG}"
        else
            GIT_SBG="${GIT_CLEAN_SBG}"
        fi
        
        GIT+="${FMT_RESET}${GIT_SBG}"

        echo -e "${GIT}"
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
