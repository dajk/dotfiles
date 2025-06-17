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
git clone https://github.com/dajk/dotfiles.git ~/dotfiles && cd ~/dotfiles && ./install.sh

# To cleanup afterwards run
rm -rf ~/dotfiles
```

- ##### SETUP GESTURES

1. Open spotlight search (⌘ + space)
2. Type `Trackpad` and open
3. Enable `Secondary click` & `Tap to click` options (if it's enabled already, disabled/enable again)
4. Go to `Accesibility > Pointer Control > Trackpad Options`
5. `Enable dragging` (`without drag lock`) and click `OK`

- ##### RUN DOCKER

```sh
open /Applications/Docker.app
```

- ##### RUN POSTGRESQL

```sh
brew service start postgresql
psql postgres
```

```sh
➜ psql postgres
psql (12.4)
Type "help" for help.

postgres=# press \q to quit
```

- ##### GENERATE SSH

```sh
ssh-keygen -t ed25519 -C "your_email@example.com" # recommended or
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# copy to clipboard
pbcopy < ~/.ssh/id_ed25519.pub
```

- ##### SETUP VIM

To install plugins run

```sh
# run vim
vi

# install vim packages
:PlugInstall
```

## Features

- [Ghostty](https://ghostty.org/)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Homebrew](http://brew.sh/)
- [Docker](https://www.docker.com/)
- [PostgreSQL](https://www.postgresql.org/) following this [configuration](https://gist.github.com/ibraheem4/ce5ccd3e4d7a65589ce84f2a3b7c23a3)
- [Node.JS](https://nodejs.org/en/) using [nvm](https://github.com/nvm-sh/nvm)
- [VSCode Editor](https://github.com/dajk/dotfiles/tree/master/vscode) and [configuration](https://github.com/dajk/dotfiles/tree/master/vscode)
- [Dracula theme](https://draculatheme.com/terminal/)
- [Rectangle](https://rectangleapp.com/) and basic shortcuts
- [AppCleaner](https://freemacsoft.net/appcleaner/)
- [ResponsivelyApp](https://responsively.app/)
- [YouTube Music](https://music.youtube.com/)
- [Slack](https://slack.com/intl/en-de/)
- [WhatsApp](https://web.whatsapp.com/)
- [Postman](https://www.postman.com/)
- Dark theme OS X and defaults override
