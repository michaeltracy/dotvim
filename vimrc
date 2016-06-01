execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set mouse=a
set shiftwidth=4
set tabstop=4
set hidden
set background=dark

if version >= 703
	set colorcolumn=80
endif

" Turn on omnicomplete, complete with C-Space bringing up complete menu
"set omnifunc=syntaxcomplete#Complete
"set completeopt+=longest
"inoremap <C-@> <C-x><C-o>

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

" Powerline fonts for airline
let g:airline_powerline_fonts = 1
