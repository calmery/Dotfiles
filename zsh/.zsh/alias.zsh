alias l='exa -la'
alias ls='exa -lhi'
alias b='git branch | grep "*" | cut -d " " -f2'
alias d="git status --porcelain | sed s/^...// | sed -e :loop -e 'N; $!b loop' -e 's/\n/ /g'"
alias m='git log -n 1 master --pretty=format:"%H"'
alias p='git push origin `b`'
alias npm='~/.n/bin/npm'
