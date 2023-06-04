# easy zash

- This repository is my setting files related to `.zshrc`
- You can install and use if you want

# Getting Started

- Please run below on your terminal

```terminal
git clone git@github.com:shunsock/zshian.git
cd zshian
bash init.sh // if you have already install software in this file, please skip this process
bash update.sh // this file REMOVE `~/.zshrc`, copy setting file in this repository and source it
source ~/.zshrc
```

# Prompt
- When you are in directory which git is working, prompt is like below.
- (if you are not in, hide from console)

<img width="820" alt="prompt" src="https://github.com/shunsock/start_zsh/assets/84004458/ca3c6c73-71a7-408e-be70-534b4c4588d8">


# Functions
- `targz arg1 arg2`
    - copy arg1, but exclude `.DS_Store` file

- `gcm arg1 arg2`
    - alias: `git commit -m "arg1 arg2"`
    - you can search arg1 with command `gcm_search_command word`
    - if you want to all command data. please read `./zsh_config/doc/search_command_name.txt`
