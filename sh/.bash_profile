########
# bash #
########

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi


# Show clean/dirty state for Git in prompt
export GIT_PS1_SHOWDIRTYSTATE=1

########
# PATH #
########

export ANDROID_HOME="/c/$HOMEPATH\AppData\Local\Android\android-studio\sdk"
export PATH="$ANDROID_HOME":${PATH}
export PATH="$ANDROID_HOME/tools":${PATH}
export PATH="$ANDROID_HOME/platform-tools":${PATH}
export PATH="/c/Program Files/Perforce/":${PATH}


###########
# ALIASES #
###########

# git command autocompletion script
source ~/bin/git-completion.bash

# navigate to C:\
alias cdc='cd /cygdrive/c'

# navigate to C:\Source\Certus
alias certus='cd /cygdrive/c/Source/Certus'

# git commamands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias gpl='git pull'
alias gpu='git push'
alias gad='git add -A'
alias gmt='git mergetool'
alias bdf='git diff'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# ls alias for color-mode
alias ls='ls -lha --color=always'

# up folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# refresh shell
alias reload='source ~/.bash_profile'