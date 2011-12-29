call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set t_Co=256            "using 256 colors
colorscheme desert256   "desert256 color scheme  
syntax on               "syntax highlighting
set hlsearch            "search highlighting

"previous tab"
nmap <S-Left> :tabp<CR> 
"next tab"
nmap <S-Right> :tabn<CR>

"NERDTreeToggle"
nmap <F2> :NERDTreeToggle<CR> 

"TagbarToggle"
nmap <F3> :TagbarToggle<CR>
