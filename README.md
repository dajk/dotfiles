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

- ##### ACTIVATING THEME AND OTHER iTerm2 SETUP

1. `iTerm2` > `Preferences` > `Profiles` > `Colors` Tab
2. Open the `Color Presets...` drop-down in the bottom right corner
3. Select `Import...` from the list
4. Select the `Dracula-theme.itermcolors` file (browse from `/User/{YOUR_USER}/dotfiles/iterm2/Dracula-theme.itermcolors` or download theme from [here](https://raw.githubusercontent.com/dajk/dotfiles/master/iterm2/Dracula-theme.itermcolors) and select it in this step)
5. Select the `Dracula-theme` from `Color Presets...`
6. Go to the `Text` section and increase font size to `14`

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
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
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

- [iTerm2](https://iterm2.com/)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Homebrew](http://brew.sh/)
- [Docker](https://www.docker.com/)
- [PostgreSQL](https://www.postgresql.org/) following this [configuration](https://gist.github.com/ibraheem4/ce5ccd3e4d7a65589ce84f2a3b7c23a3)
- [Node.JS](https://nodejs.org/en/) using [nvm](https://github.com/nvm-sh/nvm)
- [Deno](https://deno.land/)
- [Golang](https://golang.org/)
- [VSCode Editor](https://github.com/dajk/dotfiles/tree/master/vscode) and [configuration](https://github.com/dajk/dotfiles/tree/master/vscode)
- [Dracula theme](https://draculatheme.com/terminal/)
- [Spectacle](https://www.spectacleapp.com) and basic shortcuts
- [AppCleaner](https://freemacsoft.net/appcleaner/)
- [ResponsivelyApp](https://responsively.app/)
- [Slack](https://slack.com/intl/en-de/)
- [WhatsApp](https://web.whatsapp.com/)
- Dark theme OS X and defaults override
- [Grammarly](https://app.grammarly.com/)
