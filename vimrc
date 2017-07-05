execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
" Use osx clipboard
set clipboard=unnamed

set shiftwidth=4
set tabstop=4
set hidden
set background=dark

if version >= 703
	set colorcolumn=80
endif

colorscheme slate

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

" toggle Git stuff
nmap <Leader>g :Gstatus<CR>

" Show statusline (for powerline)
set laststatus=2

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" Powerline fonts for airline
let g:airline_powerline_fonts = 1

" Allow project-specific vimrc
set exrc
set secure

" Use ack.vim for ag. See
" https://github.com/rking/ag.vim/issues/124#issuecomment-227038003
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
nmap <c-f> :Ag<space>

" Setup CtrlP, bind it to c-p, and work out of .git root dir
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Recommended Syntastic defaults
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Show us some whitespace
"set listchars=eol:↩,tab:⇥\ ,trail:~,extends:↦,precedes:↤,space:·
set listchars=tab:⇥\ ,trail:~,extends:»,precedes:«
set list
"and let lines trail off the page
set nowrap

" Run jsx parsing on js files
let g:jsx_ext_required = 0
