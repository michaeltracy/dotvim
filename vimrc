execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set mouse=a
set shiftwidth=4
set tabstop=4
set hidden

if version >= 703
	set colorcolumn=80
endif
" Where to throw global tags (like the jdk sources)
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

" Show statusline (for powerline)
set laststatus=2

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
