# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="remuse"
DEFAULT_USER="patrick"

#for autojump, recommended when brew installed it
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow autojump wd)

source $ZSH/oh-my-zsh.sh


export ANDROID_HOME=/Users/patrick/Documents/sdks/android-sdk-macosx
export PATH=/usr/local/bin:/usr/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH:

export APPENGINE_HOME=$HOME/Documents/sdks/google-cloud-sdk/platform/appengine-java-sdk

export EDITOR='subl -w'


#export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export IDEA_JDK=$JAVA_HOME

fpath=(/usr/local/share/zsh-completions $fpath)


alias push="~/bin/push"
alias pr="~/bin/pullreq"
alias report="open file:///Users/patrick/git/youvisit/android-consumer-app/app/build/reports/tests/debug/index.html"
alias pull="git pull"
alias pushtags="git push --tags"
alias grhh="git reset head --hard"
alias gs="git status"
alias gr="./gradlew"
alias grct="./gradlew clean test"
alias grctd="./gradlew clean testD"
alias grt="./gradlew test"
alias unin="adb uninstall com.vmn.android.spike"
alias utrackerati="adb uninstall com.thehackerati.trackerati"
alias uocre="adb uninstall com.thehackerati.ocre"
#alias unin="adb uninstall com.vmn.android.spike"
#alias unin="adb uninstall com.seeclickfix.ma.android"
alias bkapp="adb backup -f $HOME/scf_bkup.ab -noapk com.seeclickfix.ma.android"
alias unpkapp="dd if=$HOME/scf_bkup.ab bs=1 skip=24 | python -c 'import zlib,sys;sys.stdout.write(zlib.decompress(sys.stdin.read()))' | tar -xvf -"


