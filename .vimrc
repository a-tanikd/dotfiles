"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin(expand('~/.vim/plugged'))

" Declare the list of plugins.
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off vi compatibility
set nocompatible

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<Space>"

" Enable the use of the mouse in normal, visual, insert,
" command line and help modes
set mouse=a


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on hyblid line number
set number relativenumber

" Show ruler
set ruler

" Always show the status line
set laststatus=2

" Don't show mode info
set noshowmode

" Enables syntax highlighting
syntax on

" Specify color scheme
colorscheme nord

" Configure status line appearance with lightline.vim
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make <C-a> and <C-x> target only numbers, and deal with them as decimal
set nrformats=

" Indent with 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Turn off IM when leaving insert mode
inoremap <ESC> <ESC>:set iminsert=0<CR>

