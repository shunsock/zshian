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
  bg_color=$3

  # triangle
  tri_color=$4
  tri_bg_color=$5
  triangle=$'\ue0b0'

  echo "%F{$color}%K{$bg_color}$text%k%f%F{$tri_color}%K{$tri_bg_color}$triangle%f%k"
}

function git_branch_name()
{
  branch_symbol=$'\ue0a0'
  git_branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $git_branch != "" ]]; then
    echo " $branch_symbol $git_branch "
  fi
}


zsh_prompt() {
  newline=$'\n\n'
  gear=$'\u2699'

  # ps_comp "text" "text_color" "bg_color" "tri_color" "tri_bg_color"
  cwd_path="%{$(ps_comp " %~ " "black" "green" "green" "black")%}"
  system_arch="%{$(ps_comp " $gear $(arch) " "white" "black" "black" "blue")%}"
  git_status="%{$(ps_comp "$(git_branch_name)" "black" "blue" "blue" "none")%}"

  second_line="$newline(%F{magenta}%n%f) %F{green}↣ %f%#"

  PROMPT="${cwd_path}${system_arch}${git_status}${second_line}"
}


if brew list &> /dev/null; then
  add-zsh-hook precmd zsh_prompt
fi
