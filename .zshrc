# Load seperated config files
for conf in "$HOME/.zsh/"*/*.zsh; do
  source "${conf}"
done
unset conf
