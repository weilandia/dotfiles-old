#git prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh
PS1='$(__git_ps1 " (%s)")'
export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWSTASHSTATE="1"
export GIT_PS1_SHOWUNTRACKEDFILES="1"
export GIT_PS1_SHOWUPSTREAM="auto"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

echo -e "\033[0;33mWelcome\033[0m"
echo -e "\033[1;31m◁\033[0m\033[1;32m◁\033[0m\033[1;33m◁\033[0m\033[1;34m◁\033[0m\033[1;35m◁\033[0m\033[1;36m◁\033[0m\033[1;37m◁\033[0m\033[0;31m◁\033[0m\033[0;32m◁\033[0m\033[0;33m◁\033[0m\033[0;34m◁\033[0m\033[0;35m◁\033[0m\033[0;36m◁\033[0m\033[0;37m◁\033[0m"

MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export PATH="$HOME/.node/bin:$PATH"
export PS1="\[\033[0;36m\]\\W$PS1 \[\033[1;31m\]✈︎\[ \]\[\033[0m\]"
export CLICOLOR=1
export LSCOLORS=bxcxdxexfxgxBxCxDxExFx

alias bashprofile='atom . ~/.bash_profile'
alias dbstart="postgres -D /usr/local/var/postgres"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~='cd ~'
alias practice='cd ~/Dropbox/dev/practice'
alias prac='cd ~/Dropbox/dev/prac'
alias projects='cd ~/Dropbox/dev/projects'
alias gits='git status -s'
alias gitc='git commit -m'
alias gitcm='git commit'
alias gita='git add'
alias gitp='git push origin'
alias pull='git pull'
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias github='open https://github.com/weilandia'
alias pi='ssh pi@10.0.0.135'
alias piweb='open http://10.0.0.135'
alias localhost='open http://192.168.2.1/'
alias chrome='open -a "Google Chrome"'
alias hist='git log --graph --date=short'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# prefer brew installed binaries over Apple installed ones
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*