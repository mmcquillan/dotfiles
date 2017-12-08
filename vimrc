set term=screen-256color
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
set belloff=all
set tm=500
syntax on
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set number
set hidden
set ai "Auto indent"
set si "Smart indent"
set wrap "Wrap lines"
set mouse=a
set shell=/bin/bash
set spelllang=en
set laststatus=2
set listchars=tab:>\ ,trail:~,extends:>,precedes:<
set list
let g:nerdtree_tabs_open_on_console_startup=0
let g:airline#extensions#tabline#enabled = 1
let g:ale_sign_column_always = 1
nnoremap n nzz
nnoremap N Nzz
noremap <C-n> :NERDTreeTabsToggle<CR>
noremap <C-k> :bnext<CR>
noremap <C-j> :bprevious<CR>
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif"
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'qpkorr/vim-bufkill'
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'myusuf3/numbers.vim'
Plug 'flazz/vim-colorschemes'
Plug 'w0rp/ale'
call plug#end()
colorscheme wasabi256
