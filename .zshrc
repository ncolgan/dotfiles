# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="ncolgan"

DEFAULT_USER="nick.colgan"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails bundler cap common-aliases gem git-extras npm rvm sudo dircycle dirhistory jira)

source $ZSH/oh-my-zsh.sh

alias tailf="tail -f"
alias rspec='nocorrect rspec'
alias gcb="git checkout -b"
alias gca="git commit -a"
alias ga="git add"
alias gp="git push"
alias gl="git log"
alias gs="git status -sb"
alias gd="git diff"
alias gdc="git diff --cached"
alias gc="git checkout"
alias gcl="git clone"

alias rc="rails c --sandbox"

alias rmswap="find . -name '*.swp' -delete"

alias tmux="TERM=screen-256color-bce tmux"

alias bx="bundle exec"
alias rtags="ctags -R --exclude=tmp --exclude=log --exclude=.git ."

alias vtab='vim -c "lcd %:p:h" -c "NERDTreeCWD" --servername VIM --remote-tab'

alias git-grep-all='git rev-list --all | xargs git grep'

# alias mvim="open -a MacVim"

mkc () {
  mkdir -p "$@" && cd "$@"
}

if [ -f $HOME/.work_aliases ]; then
  source ~/.work_aliases
fi

#bindkey -v

#bindkey '^R' history-incremental-search-backward

# Customize to your needs...

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="./bin:$HOME/bin:$PATH"
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

if type go > /dev/null; then
  export PATH=$PATH:$(go env GOROOT)/bin
fi

export EDITOR=vim

setopt NO_NOMATCH

export DOCKER_HOST=tcp://192.168.59.103:2375
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

stash-team() { stash pull-request $1 "@tom.rogers" "@daniel.olson" "@michael.sampson" "@mark.nutter" }
cpr() { stash pull-request $1 $(cat ~/bin/stash-users.txt | fzf -m) $2 -o }
jira-issues() { curl -k -s -G -u nick.colgan:D#5R3Hvje -H 'Content-Type: application/json' --data-urlencode "jql=assignee=nick.colgan and status in (Open, Started)" "https://jira.corp.code42.com/rest/api/2/search" 2>&1 | json | jq -r ".issues[] | [.key,.fields.summary] | join(\" - \")" }
find-jira() { echo $(jira-issues | fzf) | perl -pe "s/^(PL-[0-9]*) - (.*)$/ncolgan\/\1\/\L\2/i; s/[^\w \/\n]/-/g; s/[- ]+/-/g; s/\/PL([0-9]*)\//\/PL-\1\//" | perl -pe 'lc'}
new-jira-branch() { git cob $(find-jira) }

[ -f ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
