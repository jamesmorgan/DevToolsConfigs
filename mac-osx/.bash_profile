
## True-strap configs
export vm_mem=6144
export init_role=devvm_headless
export init_env=dev
export init_repoprivkeyfile=github.pem

## General Utils
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -lat' # enhancement
alias ll='ls'

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

## alias git-nf="git checkout master; git ull; git pull; git push;"
alias git-nf=git_new_feature

alias git-prune-merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

alias cdwksp='cd /Users/jamesmorgan/workspace/';

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

export MAVEN_OPTS='-Xms1024m -Xmx2048m -XX:MaxPermSize=256m'
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "