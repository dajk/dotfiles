# dotfiles

## Getting started (Install in OSX)

##### INSTALL GIT

First git installation is needed. Open `terminal` and run following command:

```sh
git
```

It's going to open confirmation popup with question if you want to install git, confirm it and you are good to go.

The next command will do the whole process, download the repo, install it and do the cleanup.

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

- [iTerm2](https://iterm2.com/)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Homebrew](http://brew.sh/)
- [Node.JS](https://nodejs.org/en/) using [nvm](https://github.com/nvm-sh/nvm)
- [VSCode Editor](https://github.com/dajk/dotfiles/tree/master/vscode) and [configuration](https://github.com/dajk/dotfiles/tree/master/vscode)
- [Dracula theme](https://draculatheme.com/terminal/)
- [Spectacle](https://www.spectacleapp.com) and basic shortcuts
- Dark theme OS X and defaults override
