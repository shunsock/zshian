# NEW LINE SETTING #
# * insert new line after running command
# $PS1_NEWLINE_LOGIN          # undefined
# -z $hoge                    # if $hoge has no value, return true
# autoload -Uz                # prevent from being over written and use zsh format
add_newline() {
  if [[ -z $PS1_NEWLINE_LOGIN ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd add_newline 
