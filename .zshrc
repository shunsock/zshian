# Load seperated config files
for conf in "$HOME/zsh_config/"*.zsh; do
  source "${conf}"
done
unset conf
