execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set mouse=a
set shiftwidth=4
set tabstop=4

if version >= 703
	set colorcolumn=80
endif
set tags+=~/.tags
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest
set background=dark

" gradle syntax highlighting
au BufNewFile,BufRead *.gradle set filetype=groovy

" toggle Tagbar
nmap <Leader>b :TagbarToggle<CR>

" toggle NERDTree
nmap <Leader>t :NERDTreeToggle<CR>
