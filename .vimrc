call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
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
colorscheme gruvbox
set background=dark
set ignorecase
set smartcase
set hlsearch
set encoding=utf8
set ffs=unix,dos,mac

"add program
"smart tabulation help to you press tab and autocomplete 
function! SuperCleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction


"mapping
map <C-n> :NERDTreeToggle<CR>
inoremap <Tab> <C-R>=SuperCleverTab()<cr>
