# Note: line 7; doc dir is upper dir of this file
# Note: line 7; we use absolute path for git_alias
function show_alias() {
  local csv_file_path=$1
  echo -e "Alias\tCommand\n----\t-------"
  while IFS=',' read -r alias command
  do
      echo -e "${alias}\t${command}"
  done < $csv_file_path | column -t
}


function zshian() {
  if [ $1 = "alias" ]; then
    files=($(ls $HOME/.zsh/doc/alias))
    for file in ${files[@]}; do
      local title="${file%.csv}"
      local csv_file_path="$HOME/.zsh/doc/alias/$file"
      echo "--- $title ---"
      show_alias "$csv_file_path"
      echo "\n"
    done
  fi
}
