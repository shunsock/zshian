function show_git_alias() {
    echo -e "Alias\tCommand\n----\t-------"
    while IFS=',' read -r alias command
    do
        echo -e "${alias}\t${command}"
    done < $HOME/.zsh/doc/git_alias.csv | column -t
}
