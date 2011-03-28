# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Add commands lilkely to be used by sudo
PATH=$HOME/bin:/sbin:/usr/sbin:$PATH
export PATH

# Setup some colours to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'" # lists all the colors

# Aliases
alias ll='ls -lha --color=always'
alias ls='ls -lat --color=always'
alias cddialler='cd /var/workspace/DiallerControls'

# Shopt
shopt -s cdspell #allow incorrect directory names to be corrected
shopt -s checkwinsize #make sure terminals wrap lines correctly after resizing them
shopt -s cmdhist #multiline commands kept as one history item

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
 
#set -o vi #vi edit mode

# History
export HISTCONTROL=ignoredups
export HISTFILESIZE=3000
export HISTIGNORE="ls:ll" # : separate commands to ignore
shopt -s histappend
 
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
# make tab cycle through commands instead of listing
#bind '"\t":menu-complete'
 
# Grep
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# Editors
export EDITOR='vim'

# Prompts
prompt_func() {
    previous_return_value=$?;
    prompt="\[${COLOR_GREEN}\]\u@\h \W\[${COLOR_NC}\] "
 
    if test $previous_return_value -eq 0
    then
        PS1="${prompt}> "
    else
        PS1="${prompt}\[${COLOR_RED}\]> \[${COLOR_NC}\]"
    fi
}
PROMPT_COMMAND=prompt_func

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

alias exit='logout'

# Maven Commands
alias mvnce='mvnce.bat'
alias mvncs='mvncs.bat'
alias mvnct='mvnct.bat'
alias mvnp='mvnp.bat'
alias mvncsd='mvncsd.bat'
alias mvncd='mvncd.bat'
alias mvncc='mvncc.bat'
alias mvncd='mvncd.bat'
alias mvncp='mvncp.bat'
alias mvnp='mvnp.bat'
alias mvnf='mvnf.bat'

echo $SHELL
# Display welcome message 
echo -e "${COLOR_GREEN}Welcome $USER Cygwin, Almost a linux shell"
echo `date`
cd 'C:\workspaces\james.morgan'
