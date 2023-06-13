FMT_BOLD="\[\e[1m\]"
FMT_DIM="\[\e[2m\]"
FMT_RESET="\[\e[0m\]"
FMT_UNBOLD="\[\e[22m\]"
FMT_UNDIM="\[\e[22m\]"
PRIMARY="\[\e[34m\]"
PROMPT="\[\e[92m\]"
USERNAME_SBG="\[\e[90m\]"
USERNAME_BG="\[\e[100m\]"
USERNAME_FG="\[\e[97m\]"
PATH_SBG="\[\e[34m\]"
PATH_BG="\[\e[44m\]"
PATH_FG="\[\e[30m\]"
FILES_SBG="\[\e[36m\]"
FILES_BG="\[\e[46m\]"
FILES_FG="\[\e[30m\]"
GIT_SBG="\[\e[33m\]"
GIT_BG="\[\e[43m\]"
GIT_FG="\[\e[30m\]"

parse_git_bg() {
    [[ $(git status -s 2> /dev/null) ]] && echo -e "\e[43m" || echo -e "\e[42m"
}

PS1="\n${PRIMARY}╭─" # begin arrow to prompt
PS1+="${USERNAME_SBG}" # begin USERNAME container
PS1+="${USERNAME_BG}${PRIMARY}${FMT_BOLD} @ " # print OS icon
PS1+="${USERNAME_FG}\u" # print username
PS1+="${FMT_UNBOLD} ${USERNAME_SBG}${PATH_BG} " # end USERNAME container / begin DIRECTORY container
PS1+="${PATH_FG}\w " # print directory
PS1+="${PATH_SBG}${FILES_BG} " # end DIRECTORY container / begin FILES container
PS1+="${FILES_FG}"
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type d | wc -l) " # print number of folders
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type f | wc -l) " # print number of files
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type l | wc -l) " # print number of symlinks
PS1+="${FMT_RESET}${FILES_FBG}"
PS1+="\$(parse_git_bg)${FILES_SBG}${GIT_BG} " # end FILES container / begin BRANCH container
PS1+="${GIT_FG} \$(git branch | grep -Po '(?<=\* ).+') " # print current git branch
PS1+="${FMT_RESET}${GIT_SBG}\n" # end last container (either FILES or BRANCH)
PS1+="${PRIMARY}╰ " # end arrow to prompt
PS1+="${PROMPT}\\$ " # print prompt
PS1+="${FMT_RESET}"
export PS1
