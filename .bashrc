# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## Set up Maven home
export M2_HOME=/opt/apache-maven-3.1.0
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

## Set up Java
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=$JAVA_HOME/bin:$PATH

## Komodo
export PATH="/home/jimbob/komodo/bin:$PATH"

## General Utils
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -lat' # enhancement

## Git helpers
alias gs='git status'
alias gd='git diff'
alias gaa='git add -A'

# Maven helpers
alias mvnct='mvn -U clean test'
alias mvncjr='mvn -U clean jetty:run'
alias mvnctp='mvn -U clean package'
alias mvncee='mvn -U clean eclipse:eclipse -DdownloadSources=true'
alias mvncd='mvnDebug -U clean jetty:run'
alias mvncc='mvn clean -Pclover clover2:instrument clover2:aggregate clover2:clover'




