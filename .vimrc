" https://stackoverflow.com/a/234578

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert spaces
set expandtab
" line numbers
set nu
" auto indent on previous indentation
set autoindent
autocmd Filetype python setlocal ts=4 sw=4


" vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Nerdtree config
" Auto opens nerdtree
autocmd vimenter * NERDTree
" Auto close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Auto focuses to modified file
autocmd VimEnter * NERDTree | wincmd p


" linter
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'pylint'],
\}

" vue-vim plugin
au BufReadPost *.vue set syntax=html

" gruvbox vim theme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'
