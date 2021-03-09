#search process
alias psx="ps auxw | grep $1"

#compiled coffeescript by line number
alias coffeeln="coffee -p `$1` | less -N"

#export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "
#PS1="\D{%m-%d} \t [\u@\h]\[\e[0;35m\][\w]\[\e[1;32m\]$(__git_ps1 "(%s)")\[\e[0;37m\]> "
PS1="\D{%m-%d} \t [\u@\h]\[\e[0;35m\][\w]\[\e[0;37m\]>"

if [ -f ~/git-completion.bash ]; then
        source ~/git-prompt.sh
        source ~/git-completion.bash
        GIT_PS1_SHOWDIRTYSTATE=true
        export PS1='\D{%m-%d} \t \[\e[0;35m\]\w\[\e[1;32m\]$(__git_ps1 " %s")\[\e[0;37m\]>'
fi

export PS1
#custom history
export HISTTIMEFORMAT='[%F %T] '

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
