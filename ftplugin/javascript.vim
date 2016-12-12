setlocal noexpandtab
setlocal shiftwidth=4
setlocal softtabstop=4

let g:syntastic_javascript_checkers = ['eslint']

" Switch ctags to use es6 compatible tags
let g:tagbar_ctags_bin = '/Users/mtracy/.nvm/versions/node/v6.2.0/bin/jsctags'
