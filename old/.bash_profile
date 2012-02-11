# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.0-7

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# Set user-defined locale
export LANG=${locale -uU}

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

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
alias cddropbox='cd /cygdrive/l/Dropbox/'

# Alias for http://defunkt.io/hub/
alias git='hub'

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



echo $SHELL
# Display welcome message 
echo -e "${COLOR_GREEN}Welcome $USER Cygwin, Almost a linux shell"
echo `date`
cd '/cygdrive/l/Dropbox/workspace'
