if [ -e ~/.zshrc ]; then
  rm -f ~/.zshrc
fi
if [ -e ~/.zsh ]; then
  rm -rf ~/.zsh
fi
cp .zshrc  ~/.zshrc
cp -r .zsh ~/.zsh
