[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="ncolgan"
# ZSH_THEME='af-magic'

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
plugins=(git ruby rails bundler cap common-aliases gem git-extras npm sudo dircycle dirhistory jira emacs dotenv fasd fzf nmap httpie tmux)

# source $ZSH/oh-my-zsh.sh

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

# alias tmux="TERM=screen-256color-bce tmux"

alias bx="bundle exec"
alias rtags="ctags -R --exclude=tmp --exclude=log --exclude=.git ."

alias vtab='vim -c "lcd %:p:h" -c "NERDTreeCWD" --servername VIM --remote-tab'

alias git-grep-all='git rev-list --all | xargs git grep'

if [[ "$OSTYPE" == 'linux-gnu' ]]; then
  alias agi="sudo apt-get install -y"
  alias acs="apt-cache search"
fi

alias sourcetree='open -a SourceTree'
alias mux=tmuxinator

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

export PATH="./bin:$HOME/bin:$PATH"
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

if type go > /dev/null; then
  export PATH=$PATH:$(go env GOROOT)/bin
fi

setopt NO_NOMATCH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

cpr() { stash pull-request $1 $(cat ~/bin/stash-users.txt | fzf -m) $2 -o }
jira-issues() { curl -k -s -G -u nick.colgan:0Z10MmGbWcBn -H 'Content-Type: application/json' --data-urlencode "jql=assignee=nick.colgan and status in (Open, Started)" "https://jira.corp.code42.com/rest/api/2/search" 2>&1 | jq -r ".issues[] | [.key,.fields.summary] | join(\" - \")" }
find-jira() { echo $(jira-issues | fzf) | perl -pe "s/^(PL-[0-9]*) - (.*)$/ncolgan\/\1\/\L\2/i; s/[^\w \/\n]/-/g; s/[- ]+/-/g; s/\/PL([0-9]*)\//\/PL-\1\//" | perl -pe 'lc'}
new-jira-branch() { git cob $(find-jira) }
tar-iml() { find . -name "*.iml" | tar -czf iml.tar.gz -T - }

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

git-cos() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

git-cors() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

source ~/.work_aliases

alias e="$EDITOR"
alias se="sudo $EDITOR"
alias ec="emacsclient -n"
export DEFAULT_USER="nickcolgan"

# nvm use stable --silent

docker-clean() {
  docker rm -f $(docker ps -a -q)
  docker rmi $(docker images -q)
}

export_ip() {
  export localhost_ip="$(ifconfig en0 inet | grep "inet " | awk -F'[: ]+' '{ print $2 }')"
}

start-server() {
  export_ip
  docker-compose up inventory-db test-db redis db api-auth mq inventory-api api inventory-worker bell router events
}

eval "$(fasd --init auto)"

export STRIPE_PUBLIC_KEY="pk_0EFSMTWMJfgNyY2YwUb2szdOLutp6"
export STRIPE_API_KEY="sk_0EFSV6xNaDfR6IFnsaLZh2QJO08Vo"
export BOSS_API_KEY="278124104b524dac8c9668fa65f861cc"

alias mbl-test="ssh ec2-user@52.206.79.60"
alias mbl-prod="ssh ec2-user@23.21.85.75"
alias bamboo-test="ssh ec2-user@107.22.232.84"
alias bamboo-prod="ssh ec2-user@54.235.74.118"

alias mbl-prod-db="pgcli -U mbl -W -h mbl-production.cyia8carv4eq.us-east-1.rds.amazonaws.com mbl"
alias mbl-test-db="pgcli -U mbl -h mbl-test2.cyia8carv4eq.us-east-1.rds.amazonaws.com postgres"

alias bamboo-prod-db="pgcli -U bamboo -h bamboo-db.ciu5k89kaqcn.us-east-1.rds.amazonaws.com bamboo"

alias sudoedit="sudo -e"

export DANGEROUSLY_DISABLE_HOST_CHECK=true

alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(nvim {})+abort'"

alias ping='prettyping --nolegend'
alias cat='bat'
. ~/code/z/z.sh

[[ -e "$HOME/.fzf-extras/fzf-extras.zsh" ]] \
  && source "$HOME/.fzf-extras/fzf-extras.zsh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nickcolgan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nickcolgan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nickcolgan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nickcolgan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/mysql@5.7/bin:$HOME/bin:$PATH"

autoload -U add-zsh-hook
autoload -U zargs
autoload -U ztodo
autoload -U zmv

export PATH="$HOME/.cargo/bin:$PATH"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

source ~/.bin/tmuxinator.zsh


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

. ~/.asdf/plugins/java/set-java-home.zsh

source ~/.kb_alias
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

killport() { lsof -t -i :"$@" | xargs kill; }
psport() {
  lsof -t -i :"$@" | xargs ps -p 
}
