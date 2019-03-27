# git prompt and colors
if [ -f "$HOME/.bin/bash-git-prompt/gitprompt.sh" ]; then
    source "$HOME/.bin/bash-git-prompt/gitprompt.sh"
fi

# git completion
if [ -f ~/.bin/git-completion.bash ]; then
  . ~/.bin/git-completion.bash
fi

# add commands to history
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo `dt` `pwd` $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'

# exports
export EDITOR=/usr/bin/emacs # set default editor
export GOPATH=$HOME/Work/go-work
export PATH="$GOPATH/bin:/usr/local/sbin:$PATH"

# shortcuts
alias dt='date "+%F %T"' # date and time
alias mkdir="mkdir -p" # make intermidate dirs always 
alias please="sudo !!" # exec last command with sudo 
alias showme="cat ~/.bash_eternal_history" # show all commands ever executed 
alias gobash="source ~/.bash_profile" # reload bash profile 
alias codebash="vi ~/.bash_profile" # open bash profile in emacs
alias new="open -a Terminal $PWD" # open a new terminal window at the cwd
alias mkcd="mkdir $1 && cd $_" 
alias testvar="echo $1"
alias p='python3'
alias mkenv='virtualenv env'
alias goenv='source env/bin/activate'
alias go='npm start'
alias run='flask run'
alias test='npm run coverage'
alias resnap='npm test -- -u'
alias stat='git status'
alias diff='git diff'


# color man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}

# work bash profile
if [ -f "$HOME/.bin/local/work_bash_profile.sh" ]; then
    source "$HOME/.bin/local/work_bash_profile.sh"
fi
