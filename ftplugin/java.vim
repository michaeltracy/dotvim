" Where to throw global tags (like the jdk sources)
set tags+=~/.tags

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['foo', 'bar'],
                           \ 'passive_filetypes': ['java'] }

" ctags generation
nmap <Leader>g :ctags -R --language-force=java -f.git/tags $(pwd)/src/
