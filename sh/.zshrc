# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:~/bin
export PATH=$PATH:/Users/patrick/android-sdks/platform-tools
export PATH=$PATH:/Users/patrick/android-sdks/tools

export PATH=./node_modules/.bin:$PATH
export EDITOR='subl -w'


export HOMEBREW_GITHUB_API_TOKEN=f82cc9084f72ad67e4cad9555c5770fdc30a24b2

fpath=(/usr/local/share/zsh-completions $fpath)

alias pushtags="git push --tags"
alias grhh="git reset head --hard"
alias gs="git status"
alias unin="adb uninstall com.seeclickfix.ma.android"
alias bkapp="adb backup -f $HOME/scf_bkup.ab -noapk com.seeclickfix.ma.android"
alias unpkapp="dd if=$HOME/scf_bkup.ab bs=1 skip=24 | python -c 'import zlib,sys;sys.stdout.write(zlib.decompress(sys.stdin.read()))' | tar -xvf -"
