# HOMEBREW SETTING
# * if brew has already installed, below lines will be run when reading this file
# if type brew          : check wheather brew command exist
# &>                    : redirect both of standard output and error to /dev/null
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
  autoload -Uz colors && colors
  autoload -Uz add-zsh-hook
fi


# Delete the empty character immediately before the completion entered in zsh-completion
ZLE_REMOVE_SUFFIX_CHARS=$'' # add space after completion


function ps_comp() {
  # main input line bar
  text=$1
  color=$2

  echo "%F{$color}$text%f"
}

function git_branch_name()
{
  branch_symbol=$'\ue0a0'
  git_branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $git_branch != "" ]]; then
    echo "$branch_symbol $git_branch"
  fi
}


zsh_prompt() {
  newline=$'\n'
  gear=$'\u2699'
  hacker='shunsock'
  darkblue='#294C7A'
  blue='#4DABFF'
  yellow='#E1E60B'
  green='#43BFA0'

  # first line
  name="%{$(ps_comp "$hacker" "$darkblue")%}"
  system_arch="%{$(ps_comp "$gear $(arch)" "$blue")%}"
  git_status="%{$(ps_comp "$(git_branch_name)" "$green")%}"

  # second line
  second_line="$newline%F{$yellow}%~%f ↣ %# "

  PROMPT="${name} on ${system_arch} on ${git_status}${second_line}"
}

if brew list &> /dev/null; then
  add-zsh-hook precmd zsh_prompt
fi
