#For vagrant
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
#Making sure the correct python is being used
export PYTHONPATH="$PYTHONPATH:/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages"

#git stuff
alias gs='git status'
alias go='git checkout'
alias gb='git branch'
alias got='git '
alias v='vagrant '

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#git tab auto-completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#Terminal Stuff to make it look nicer
PS1="\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\n❖ " #makes prompt colorized, and gives me the full CWD
export CLICOLOR=1 #adds colors for the prompt
export LSCOLORS=ExFxBxDxCxegedabagacad #adds colors to 'ls'
alias ls='ls -GFh' #enables a better 'ls'
