call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Replace tab with 4 spaces
set tabstop=4
set expandtab
%retab

set t_Co=256            " using 256 colors
colorscheme desert      " desert colorscheme
syntax on               " syntax highlighting
set incsearch           " Incremental search
set hlsearch            " search highlighting
set nu                  " show line number
set foldmethod=indent   " folding by indent

" ===============================================
" Tab navigation
" ===============================================
"previous tab"
nnoremap <silent> <S-Left> :tabp<CR> 
"next tab"
nnoremap <silent> <S-Right> :tabn<CR>

" ===============================================
" NERDTree
" ===============================================
nnoremap <silent> <F2> :NERDTreeToggle<CR> 

" ===============================================
" Tagbar
" ===============================================
nnoremap <silent> <F3> :TagbarToggle<CR>

" ===============================================
" Useful hotkey
" ===============================================
" ctrl+k move lines & selections up.
" ctrl+j move lines & selections down.
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

" ===============================================
" Make it easy to edit/reload .vimrc
" ===============================================
" set mapleader to comma
let mapleader = ","
" reload vimrc
nmap <Leader>s :source $MYVIMRC<CR>
" edit vimrc in newtab 
nmap <Leader>e :tabedit $MYVIMRC<CR>
