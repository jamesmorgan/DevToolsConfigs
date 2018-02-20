 # If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jamesmorgan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Set default virtual env python to python 3
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, osx, npm, node, pip, python, sbt, scala, yarn, brew, command-not-found, history, zsh-autosuggestions, virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#########################
## CUSTOMISATION START ##
#########################

DEFAULT_USER=jamesmorgan

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# NVM default settings
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm alias default v8.9.4

## General Utils
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -lath' # enhancement
alias ll='ls'

## Set Android Platform Tools
export ANDROID_HOME=/Users/jamesmorgan/Library/Android/sdk
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export PATH=$ANDROID_PLATFORM_TOOLS:$PATH

## Set Maven Opts
export MAVEN_OPTS='-Xms1024m -Xmx2048m -XX:MaxPermSize=256m'

## Set SBT Opts
# export SBT_OPTS="-Xmx4G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss2M  -Duser.timezone=GMT"

## Set up Java
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

## Install Maven
# brew install maven

## Install brew bash completion
# brew install bash-completion
## bash completion from brew
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

## Install git
# brew install git

#################
## Git Helpers ##
#################

## Git helpers
alias gco='git checkout'
alias gpr='git pull --rebase'
alias ga='git add'
alias gs='git status'
alias gp='git push'
alias gd='git diff'
alias gaa='git add -A'
alias g-no-merged='git branch --no-merged'
alias g-merged='git branch --merged'
alias gcm='git commit -S -m'

alias git-prune-merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

alias proc='ps -ef | grep $1'

alias nethogs='/usr/local/Cellar/nethogs/0.8.5/sbin/nethogs $1'

#######################
## Workspace Helpers ##
#######################

# Dropbox Home
DROPBOX_HOME=/Users/jamesmorgan/Dropbox

## Local workspace Helpers
alias cdwksp='cd $DROPBOX_HOME/workspace';
alias cdwksp-py='cd $DROPBOX_HOME/workspace-python';
alias cdwksp-gnome='cd $DROPBOX_HOME/workspace-gnome';
alias cdwksp-java='cd $DROPBOX_HOME/workspace-sts';
alias cdwksp-android='cd $DROPBOX_HOME/workspace-android';
alias cdwksp-js='cd $DROPBOX_HOME/workspace-js';

# Moving workspace-work out of dropdox to reduce DropBox CPU usage
alias cdwksp-work='cd /Users/jamesmorgan/Documents/workspace-work/'

WORKSPACE_SHELL=$DROPBOX_HOME/workspace-shell
alias cdwksp-sh='cd $WORKSPACE_SHELL';

# COOP
alias coop='cdwksp-work; cd coop'
alias coop-vm='coop; cd fnc-development-environment; ssh-add ~/.ssh/id_rsa; vagrant up'

## Show/Hide hidden files ##
alias show-hidden-files='$WORKSPACE_SHELL/DevToolsConfigs/mac-osx/ShowHiddenFiles.sh'
alias hide-hidden-files='$WORKSPACE_SHELL/DevToolsConfigs/mac-osx/HideHiddenFiles.sh'

alias ssh-pi='ssh pi@192.168.1.7'

###################
## MAVEN Helpers ##
###################

# Maven helpers
alias mvnct='mvn -U clean test'
alias mvncjr='mvn -U clean jetty:run'
alias mvntr='mvn -U clean tomcat7:run'
alias mvnctp='mvn -U clean package'
alias mvncee='mvn -U clean eclipse:eclipse -DdownloadSources=true'
alias mvncd='mvnDebug -U clean jetty:run'
alias mvncc='mvn clean -Pclover clover2:instrument clover2:aggregate clover2:clover'
alias mvncv='mvn clean verify'
alias dirtyInstall='mvn clean install -U -DskipTests -DskipITs -Dfindbugs.skip=true -Dpmd.skip=true -Dcheckstyle.skip=true'
alias mvnciu='mvn clean install -U -DskipTests'


# brew install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# plugins(zsh-autosuggestions)

#######################
## CUSTOMISATION END ##
#######################

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# Export GPG suite (brew cask install gpg-suite) & https://help.github.com/articles/signing-commits-with-gpg/
export GPG_TTY=$(tty)

source ~/.aliases

