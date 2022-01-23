execute pathogen#infect()
syntax on
filetype plugin indent on

" My own common settings
set number
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
" Use osx clipboard
set clipboard=unnamed

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set background&

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
nmap <Leader>r :NERDTreeFind<CR>

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
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" With "straight" tabs
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" I like the luna theme; good mix of light and dark
let g:airline_theme="luna"

" Map things to flip between tabs
" borrowed from https://vi.stackexchange.com/q/2129
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
nnoremap <Leader>l :ls<CR>:b<Space>

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
" Also tell CtrlP to exclude .gitignore files and other things
" See https://github.com/kien/ctrlp.vim/issues/273
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Set distraction-free mode to \z
nnoremap <Leader>z :Goyo<CR>

" Show us some whitespace
"set listchars=eol:↩,tab:⇥\ ,trail:~,extends:↦,precedes:↤,space:·
set listchars=tab:⇥\ ,trail:~,extends:»,precedes:«
set list
"and let lines trail off the page
set nowrap

" Run jsx parsing on js files
let g:jsx_ext_required = 0

""" neocomplete settings
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" Settings for vim-gitgutter
set updatetime=250

" Make sure editorconfig doesn't conflict with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Setup ALE to work with airline
let g:airline#extensions#ale#enabled = 1
