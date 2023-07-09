#!/bin/bash
# Usage: ./make_csv.sh <path_to_source_code> <path_to_csv_csv_file>


mk_alias_csv_file_from_alias_source_code() {
  local alias_source_code_file_path=$1
  local alias_csv_file_path=$2

  # Remove lines starting with '#'
  grep -v '^#' $alias_source_code_file_path | \
  # Remove 'alias ' at the start of each line
  perl -pe 's/^alias //' | \
  # Replace '=' with ','
  perl -pe "s/='/,/" | \
  # Remove trailing quote
  perl -pe "s/'$//" | \
  # Remove blank lines
  grep -v '^$' > "$alias_csv_file_path"
}


function main(){
  # Get all alias files and insert them into a array
  files=(`ls .zsh/*/alias.zsh`)
  for source_code_file_path in "${files[@]}"; do
    # Get alias csv file path
    csv_file_path="${source_code_file_path#.zsh/}" # remove the prefix
    csv_file_path="${csv_file_path%/alias.zsh}" # remove the suffix
    csv_file_path=".zsh/doc/alias/${csv_file_path}.csv"

    # Make csv file
    mk_alias_csv_file_from_alias_source_code $source_code_file_path $csv_file_path
  done
}

main
