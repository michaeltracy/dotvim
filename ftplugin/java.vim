" Where to throw global tags (like the jdk sources)
set tags+=~/.tags

" ctags generation
nmap <Leader>g :ctags -R --language-force=java -f.git/tags $(pwd)/src/
