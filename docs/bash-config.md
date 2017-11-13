
# Bash Config Docs

A short and concise guide to walking you around the config.


## Example of the `.bash_profile`

Some obvious things:

a _comment_ is used with `#`.

```

## Potential Aliases        <-- a Comment

# alias showall='defaults write com.apple.finder AppleShowAllFiles 1 && killall Finder' <-- An alias 


## Customize Cli Prompt

# https://lifehacker.com/202042/ask-lifehacker--how-do-i-customize-my-command-line-prompt

function prompt
{
  local WHITE="\[\033[1;37m\]"
  local GREEN="\[\033[0;32m\]"
  local CYAN="\[\033[0;36m\]"
  local GRAY="\[\033[0;37m\]"
  local BLUE="\[\033[0;34m\]"
  export PS1="${GREEN}\u${CYAN}@${BLUE}\h ${CYAN}\w${GRAY}$ "
}

prompt

```

__Note:__ Always restart the terminal to see changes made to the `.bash_profile` take effect.


## Current `.bash_profile`

```

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# bash completions for git commands
# checks if file exists and reads it in if it does
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi


# Aliases

## Shortcuts
alias ll='ls -al'
alias editbash='subl ~/.bash_profile'
# alias htdocs='cd /Applications/MAMP/htdocs; ll'

## Git commands
alias log='git log'
alias wut='git log master...${branch} --oneline'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
# alias gmm='git merge master'
# alias recent='git for-each-ref --sort=-committerdate refs/heads/'
# alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Switch repos
DIR=~/Sites
alias h='cd ~/'
alias w='cd ${DIR}; ll'
## alias bs='cd ${DIR}/bootstrap'

## Server quick starts
alias js='jekyll serve --watch'
alias jbuild='bundle exec jekyll serve'
alias ps='python -m SimpleHTTPServer 4000'



```