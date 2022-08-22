" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" Dracula theme
Plug 'dracula/vim', { 'name': 'dracula' }
call plug#end()

" highlight file
syntax on
filetype plugin indent on

" theme
color dracula

" tab size
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab

