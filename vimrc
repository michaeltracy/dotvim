execute pathogen#infect()
syntax on
filetype plugin indent on

" My own common settings
set number
set mouse=a
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

" Tell closetag to only open on xml/html
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" gradle syntax highlighting
au BufNewFile,BufRead *.gradle set filetype=groovy

" toggle Tagbar
nmap <Leader>b :TagbarToggle<CR>

" toggle NERDTree
nmap <Leader>t :NERDTreeToggle<CR>

" toggle Git stuff
nmap <Leader>g :Gstatus<CR>

" Config taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

" Add mapping to call ctags
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Use regular omnicomplete for eclim
let g:EclimCompletionMethod = 'omnifunc'

" Show statusline (for powerline)
set laststatus=2

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" Powerline fonts for airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

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
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
