set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'taglist.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'ivanov/vim-ipython'
Bundle 'pep8'
Bundle 'nose.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'reinh/vim-makegreen'
Bundle 'TaskList.vim'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'sjl/gundo.vim'
Bundle 'rygwdn/ultisnips'
Bundle 'inkpot'

" vim-scripts repos

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


let mapleader=","

set foldmethod=syntax
set foldlevel=99

" python settings
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python nmap <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>" 
autocmd BufRead *.py nmap <F5> :!python %<CR>

set completeopt=menuone,longest,preview

" pyflakes
let g:pyflakes_use_quickfix = 0

" Toggle the tasklist
map <leader>td <Plug>TaskList

" Run pep8
let g:pep8_map='<leader>8'

"set colorscheme
colorscheme inkpot

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" turn syntax highlighting on
set t_Co=256
syntax on

" turn line numbers on
set number
set cursorline

" highlight matching braces
set showmatch

" taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" gundo
map <leader>g :GundoToggle<CR>

" makegreen
autocmd BufNewFile,BufRead *.py compiler nose
map <silent><Leader>mk <Esc>:call MakeGreen()<cr>
