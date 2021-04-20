######################################################
#	EXPORTS
######################################################
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH="/usr/local/bin:$PATH"
#export PATH="/Users/mishamesarcik/Library/Python/2.7/bin:$PATH"
#export PATH="/Users/mishamesarcik/Library/Python/3.7/bin:$PATH"
export VIMRC="~/.vimrc"

######################################################
#	COLORS	
######################################################
CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

######################################################
#	SETS 
######################################################
set -o vi

######################################################
#	BASH_HISTORY	
######################################################
## Avoid duplicates
#export HISTCONTROL=ignoredups:erasedups  
## When the shell exits, append to the history file instead of overwriting it
#shopt -s histappend
#HISTFILESIZE=100000000000000000000000000000000000000000000
#
#
#
## After each command, append to the history file and reread it
#export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
#

######################################################
#	TESTS	
######################################################
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

######################################################
#	ALIASES	
######################################################
alias ll='ls -lG'
alias ls='/usr/local/bin/gls --color -h --group-directories-first'
alias lofardev='cd /Users/mishamesarcik/Google\ Drive/phd/Workspace/phd/Workspace/lofar-dev/'
alias lofarpre='cd /Users/mishamesarcik/Google\ Drive/phd/Workspace/phd/Workspace/lofar-predictive-maintenance/'
alias das5='ssh -x mesarcik@fs0.das5.cs.vu.nl'
alias das_jump='ssh -J mmesarcik@jump.uvalight.net mesarcik@fs0.das5.cs.vu.nl'
alias das5.fs5='ssh -x mesarcik@fs5.das5.astron.nl'
alias lofar='ssh -L 8521:head01.cep4.control.lofar:8521 -l mesarcik portal.lofar.eu'
alias mafcees='ssh -x misha@145.100.130.160'
alias ipython='ipython --TerminalInteractiveShell.editing_mode=vi'
alias gpu-serv='ssh mmesarcik@sne-gpu-01.lab.uvalight.net'
alias gpu-serv-a100='ssh mmesarcik@sne-gpu-02.lab.uvalight.net'
alias jump='ssh -J mmesarcik@jump.uvalight.net mmesarcik@sne-gpu-01.lab.uvalight.net'
alias gpu-serv-forward='ssh -N -f -L localhost:8888:localhost:8888 mmesarcik@sne-gpu-01.lab.uvalight.net'



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mishamesarcik/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mishamesarcik/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mishamesarcik/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mishamesarcik/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

