set history=700
set autoread
set so=7
set ruler
set cmdheight=2
set backspace=eol,start,indent
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
syntax on
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set paste
set number
set ai "Auto indent"
set si "Smart indent"
set wrap "Wrap lines"
set shell=/bin/bash
set laststatus=2
let g:nerdtree_tabs_open_on_console_startup=0
let g:airline#extensions#tabline#enabled = 1
noremap <C-n> :NERDTreeTabsToggle<CR>
noremap <C-t> <C-^>
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
call plug#end()
