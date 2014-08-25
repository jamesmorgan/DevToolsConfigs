
# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## General Utils
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -lat' # enhancement
alias ll='ls'

##################
## PATH Helpers ##
##################

## Set Maven Opts
export MAVEN_OPTS='-Xms1024m -Xmx2048m -XX:MaxPermSize=256m'

## Set up Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

## Set Scala
export SCALA_HOME=/Users/jamesmorgan/Documents/DeveloperTools/scala

export PATH=$SCALA_HOME/bin:$PATH

## Set Play Framework
# brew install typesafe-activator

## Set Node
# brew install node

# Install sublime on command line
# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

#################
## Git Helpers ##
#################

## Git helpers
alias gs='git status'
alias gd='git diff'
alias gaa='git add -A'
alias g-no-merged='git branch --no-merged'
alias g-merged='git branch --merged'

git_new_feature() {
    if [[ $# -ne 1 ]]; then
        echo "Error, USAGE: git-nf BRANCH_NAME"
        return
    fi
    git checkout master;
    git ull;
    git push;
    git checkout -b $1;
    echo "Created Branch $1";
}


git_hubflow_new_feature() {
    if [[ $# -ne 1 ]]; then
        echo "Error, USAGE: git hf feature start BRANCH_NAME"
        return
    fi
    git hf feature start $1;
    echo "Created Branch $1";
}

# Git new feature using forks.
alias git-nf=git_new_feature

# Git new feature using hubflow
alias git-hf-nf=git_hubflow_new_feature

alias git-prune-merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

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
alias cdwksp-work='cd $DROPBOX_HOME/workspace-work'

WORKSPACE_SHELL=$DROPBOX_HOME/workspace-shell
alias cdwksp-sh='cd $WORKSPACE_SHELL';

## Show/Hide hidden files ##
alias show-hidden-files='$WORKSPACE_SHELL/DevToolsConfigs/mac-osx/ShowHiddenFiles.sh'
alias hide-hidden-files='$WORKSPACE_SHELL/DevToolsConfigs/mac-osx/HideHiddenFiles.sh'

####################
## MSM VM Helpers ##
####################

## MSM True-strap configs
export vm_mem=6144
export init_role=devvm_headless
export init_env=dev
export init_repoprivkeyfile=github.pem

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

####################
## PROMPT Helpers ##
####################

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "