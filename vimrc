set nocompatible
filetype off

syntax enable
set number
set history=30
set cursorline
set lazyredraw
set showmatch
set incsearch
set hlsearch
set noshowmode 
set noru
set laststatus=0

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Custom plugins goes here
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'

" Themes
Plugin 'vim-scripts/moria'

" Language support
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'python-mode/python-mode'

" Framework support
Plugin 'mjbrownie/vim-htmldjango_omnicomplete'

call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'

