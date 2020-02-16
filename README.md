# dotfiles

## Getting started (Install in OSX)

##### INSTALL GIT

First git installation is needed. Open `terminal` and run following command:
```sh
git
```
It's going to open confirmation popup with question if you want to install git, confirm it and you are good to go.

```sh
git clone https://github.com/dajk/dotfiles.git ~/dotfiles && (cd ~/dotfiles && ./install.sh) && rm ~/dotfiles
```

##### GENERATE SSH
```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
pbcopy < ~/.ssh/id_rsa.pub # copy to clipboard
```
then go to your github account settings and add newly generated ssh key.

## Features

  - [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) as your default in terminal
  - [Homebrew](http://brew.sh/)
  - [Node.JS](https://nodejs.org/en/)
  - [VSCode Editor](https://github.com/phoinixi/dotfiles/tree/master/vscode) configuration
  - [Dracula theme](https://draculatheme.com/terminal/)
  - [Spectacle](https://www.spectacleapp.com) and basic shortcuts
  - Dark theme OS X and defaults override
