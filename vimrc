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
