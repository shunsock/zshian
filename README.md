# Zshian

- This repository is my setting files related to `.zshrc`
- You can install and use if you want

# Getting Started

1. Please install from GitHub

```terminal
git clone git@github.com:shunsock/zshian.git
cd zshian
```

2. Please run if you do not have Items below

- homebrew
- zsh-completions
- zsh-autosuggestions
- git
- zsh-git-prompt

```terminal
zsh init.sh
```

3. run `update.sh` with below command

- WARNING
    - `update.sh` delete your `~/.zshrc` file
    - if you want to keep your `~/.zshrc` file, please backup before run `update.sh`

```terminal
zsh update.sh
source ~/.zshrc
```

# Prompt
- When you are in directory which git is working, prompt is like below.
- (if you are not in, hide from console)

![](https://github.com/shunsock/start_zsh/assets/84004458/ca3c6c73-71a7-408e-be70-534b4c4588d8)


# Functions
- `zshian alias`
    - show all alias
    - all alias is in `./.zsh/doc/alias/*.csv`

- `gcm arg1 arg2`
    - alias: `git commit -m "arg1 arg2"`
    - you can search arg1 with command `gcm_search_command word`
    - if you want to all command data. please read `./zsh_config/doc/search_command_name.txt`

- `gcm_search_command arg1`
    - you can search command which include `arg1`

- `targz arg1 arg2`
    - copy arg1, but exclude `.DS_Store` file
