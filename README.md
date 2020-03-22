# dotfiles

## Getting started (Install in OSX)

- ##### INSTALL GIT

First git installation is needed. Open `terminal` and run following command:

```sh
git
```

It's going to open confirmation popup with question if you want to install git, confirm it and you are good to go.

The next command will do the whole process, download the repo, install it and do the cleanup.

```sh
git clone https://github.com/dajk/dotfiles.git ~/dotfiles && ~/dotfiles/install.sh && rm ~/dotfiles
```

- ##### ACTIVATING THEME

1. `iTerm2` > `Preferences` > `Profiles` > `Colors` Tab
2. Open the `Color Presets...` drop-down in the bottom right corner
3. Select `Import...` from the list
4. Select the `Dracula-theme.itermcolors` file
5. Select the `Dracula-theme` from `Color Presets...`

- ##### RUN DOCKER

```sh
open /Applications/Docker.app
```

- ##### GENERATE SSH

```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

- ##### SETUP VIM

To install plugins, reload `.vimrc` and run

```sh
# run vim
vi

# install vim packages
:PlugInstall
```

## Features

- [iTerm2](https://iterm2.com/)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Homebrew](http://brew.sh/)
- [Docker](https://www.docker.com/)
- [Node.JS](https://nodejs.org/en/) using [nvm](https://github.com/nvm-sh/nvm)
- [VSCode Editor](https://github.com/dajk/dotfiles/tree/master/vscode) and [configuration](https://github.com/dajk/dotfiles/tree/master/vscode)
- [Dracula theme](https://draculatheme.com/terminal/)
- [Spectacle](https://www.spectacleapp.com) and basic shortcuts
- Dark theme OS X and defaults override
