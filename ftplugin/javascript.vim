" Switch ctags to use es6 compatible tags
let g:tagbar_ctags_bin = 'jsctags'

" Turn on lint-fixing
let b:ale_fixers = ['eslint']

" I don't care; format for me
let g:ale_fix_on_save = 1
