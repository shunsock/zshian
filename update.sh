if [ -e ~/.zshrc ]; then
  rm -f ~/.zshrc
fi
if [ -e ~/zsh_config ]; then
  rm -rf ~/zsh_config
fi
cat .zshrc > ~/.zshrc
cp -r zsh_config ~/zsh_config
