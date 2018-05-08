set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'ctrlp.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'tComment'
Bundle 'tpope/vim-vinegar'
Bundle 'pangloss/vim-javascript'

if filereadable(glob(".vimrc.local"))
    source .vimrc.local
endif
" All of your Plugins must be added before the following line

filetype plugin indent on    " required
syntax on

let mapleader = " "

" enable syntax highlighting
syntax enable
set background=dark
" colorscheme solarized

" show line numbers
set relativenumber 
set number
" automatically switch folders
" set autochdir

set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" set ruler
set colorcolumn=120

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

set showcmd

set wildmenu            " visual autocomplete for command menu

filetype indent on      " load filetype-specific indent files

set lazyredraw          " redraw only when we need to.

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding

set foldlevelstart=10   " open most folds by default

set foldnestmax=10      " 10 nested fold max

nnoremap <space> za

set foldmethod=indent   " fold based on indent level


" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>


" highlight last inserted text
nnoremap gV `[v`]


" jk is escape
inoremap jk <esc>

nnoremap <leader>a :Ag
set runtimepath^=~/.vim/bundle/ag

let g:netrw_liststyle=3

" split navigation mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set autochdir

set switchbuf=usetab

nnoremap <leader>h :tabp<CR>
nnoremap <leader>l :tabn<CR>

nnoremap <leader>e :tabe<Space>
nnoremap <leader>s :w<CR>

nnoremap <leader>o :CtrlP<CR>

" toggle paste mode
set pastetoggle=<F12>

" associate *.foo with php filetype
au BufRead,BufNewFile *.sjs setfiletype javascript

map <leader>y :silent %!xmllint --encode UTF-8 --format -

map <leader>f !%xmllint --format --recover -<CR>
map <leader>j :%!python -m json.tool<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

nnoremap <leader>q :vs#<CR>
autocmd BufNewFile,BufRead *.json set ft=javascript



" Text object for current line.

scriptencoding utf-8

" From the |omap-info| docs: The CTRL-U (<C-U>) is used to remove the range
" that Vim may insert.
onoremap al :<c-u>call <SID>CurrentLineAroundTextObject()<cr>
onoremap il :<c-u>call <SID>CurrentLineInnerTextObject()<cr>
vnoremap al :<c-u>call <SID>CurrentLineAroundTextObject()<cr>
vnoremap il :<c-u>call <SID>CurrentLineInnerTextObject()<cr>

function! s:CurrentLineAroundTextObject()
    " Switch to characterwise visual mode.
    normal! v
    normal! $
    " Jump to other end of visual range.
    normal! o
    normal! 0
endfunction

function! s:CurrentLineInnerTextObject()
    " Switch to characterwise visual mode.
    normal! v
    normal! g_
    " Jump to other end of visual range.
    normal! o
    normal! ^
endfunction


" setup vim: set filetype=vim tabstop=4 softtabstop=4 expandtab :
" setup vim: set shiftwidth=4 shiftround textwidth=78 autoindent :
" setup vim: set foldmethod=indent foldlevel=0 fileencoding=utf8 :
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype xquery setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" macos
set clipboard=unnamed
