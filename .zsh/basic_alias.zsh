# History
alias his='history -i'

# Change Directory
alias cd2='cd ../..'
alias cd3='cd ../../..'

# Source
alias so='source'

# Show Directory
alias l='ls -Fh'
alias la='ls -Fha'
alias ll='ls -Fhaln'
alias lls='ls -FhalnS'
alias lk='ls -Fhk'

function lsg (){
  if [ $# -ne 1 ]; then
    echo "Usage: lsg <pattern>"
    return 1
  fi
  ls -Fh | grep $1
}

function lscsv () {
  ls -m > dir.csv
}

# Text Editor Setting
alias v='vim'
alias vi='vim'

# Show Differece of Files
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# Show Amount of Used Resource
alias df='df -kh'
alias du='du -kh'
