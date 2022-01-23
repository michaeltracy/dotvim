" make sure yaml is always using 2-spaces to indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" update indent indicator so I can (slightly) follow yaml blocks
let g:indentLine_char = '⦙'
" settings for ALE
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
