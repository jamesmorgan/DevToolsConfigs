# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## Set up Maven home
export M2_HOME=/opt/maven/apache-maven-3.1.1
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

## Local workspace Helpers
alias cdwksp='cd /mnt/750-SpinPoint-A/Dropbox/workspace/';
alias cdwksp-py='cd /mnt/750-SpinPoint-A/Dropbox/workspace-python';
alias cdwksp-sh='cd /mnt/750-SpinPoint-A/Dropbox/workspace-shell';
alias cdwksp-gnome='cd /mnt/750-SpinPoint-A/Dropbox/workspace-gnome';
alias cdwksp-java='cd /mnt/750-SpinPoint-A/Dropbox/workspace-sts';
alias cdwksp-android='cd /mnt/750-SpinPoint-A/Dropbox/workspace-android';
alias cdwksp-js='cd /mnt/750-SpinPoint-A/Dropbox/workspace-js';

## Other Folders
alias dropbox='cd /mnt/750-SpinPoint-A/Dropbox';
alias finished-downloads='cd /mnt/3rd-Sata/torrents/finished\ downloads';
alias pictures='cd /mnt/750-SpinPoint-A/Dropbox/Photos';


## Local Directory Helpers
alias cddropbox='cd /mnt/750-SpinPoint-A/Dropbox/'
alias cddownloads='cd /mnt/3rd-Sata/torrents/finished\ downloads/'

# Maven helpers
alias mvnct='mvn -U clean test'
alias mvncjr='mvn -U clean jetty:run'
alias mvntr='mvn -U clean tomcat7:run'
alias mvnctp='mvn -U clean package'
alias mvncee='mvn -U clean eclipse:eclipse -DdownloadSources=true'
alias mvncd='mvnDebug -U clean jetty:run'
alias mvncc='mvn clean -Pclover clover2:instrument clover2:aggregate clover2:clover'




