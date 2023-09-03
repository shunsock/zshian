# HOMEBREW SETTING
# * if brew has already installed, below lines will be run when reading this file
# if type brew          : check wheather brew command exist
# &>                    : redirect both of standard output and error to /dev/null
# zsh-git-prompt/zshrc  : to use for showing git branch in command prompt
# autoload -Uz          : prevent from being over written by user alias. use zsh format
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $(brew --prefix)/opt/zsh-git-prompt/zshrc.sh
  autoload -Uz compinit && compinit
  autoload -Uz colors && colors
  autoload -Uz add-zsh-hook
fi


# Delete the empty character immediately before the completion entered in zsh-completion
ZLE_REMOVE_SUFFIX_CHARS=$'' # add space after completion


# PROMPT SETTING #
# alias python="python3"  : add alias for git_super_status
#                         : if Mac OS version < 12 Monterey, you can comment out this line
# %F{color} ... %f        : change color
# %n                      : user name
# ($(arch))               : system architecture
# %D                      : YYYY-mm-dd
# %T                      : hh:mm
# $(git_super_status)     : git status
# %#                      : show "#" if you are root, else show %
# if brew list | grep ~   : if ~ exists, return true
# add-zsh-hook precmd     : if

alias python="python3"
git_prompt() {
  newline=$'\n'
  user_name="%F{green}%n:%f"
  system_architecture="%F{cyan}⚙️ ($(arch));%f"
  date_time="%F{yellow}%D %T %f"
  current_directory="%F{blue}%~%f"
  git_status="%F{blue}git%f$(git_super_status)"
  endline="%F{green}↣ %f%# "

  # if .git exists show it
  if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ]; then
    PROMPT="$user_name $system_architecture $date_time $newline""$current_directory $git_status $endline"
  else
    PROMPT="$user_name $system_architecture $date_time $newline""$current_directory $endline"
  fi
}

if brew list | grep zsh-git-prompt &> /dev/null; then
  add-zsh-hook precmd git_prompt
fi
