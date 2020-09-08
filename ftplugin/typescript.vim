" Configure ctags for typescript according to
" https://github.com/majutsushi/tagbar/wiki#exuberant-ctags-vanilla
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

" Turn on lint-fixing
let b:ale_fixers = ['eslint']

" I don't care; format for me
let g:ale_fix_on_save = 1
