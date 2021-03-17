call plug#begin('~/.vim/plugged')
"auto closing bracket
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-eunuch'
"spelling you code. use ZL or Zl for take spelling
Plug 'kamykn/spelunker.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'doums/darcula'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

set number
set expandtab
set t_Co=256
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set foldcolumn=2
syntax on
set belloff=all
colorscheme darcula 
set ignorecase
set smartcase
set hlsearch
set encoding=utf8
set ffs=unix,dos,mac

"mapping
map <C-n> :NERDTreeToggle<CR>
inoremap <Tab> <C-R>=SuperCleverTab()<cr>
"set escape on jj 
imap jj <Esc>
