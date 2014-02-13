" ~/.vimrc vim settings
set backspace=indent,eol,start
syntax on
autocmd FileType css set smartindent
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab shiftround softtabstop=4 autoindent foldenable smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def
" Start in insert mode and
" set escape to switch to
" command mode or back to
" insert.
set im!
map <Esc> :set im!<CR><c-o>:echo <CR>
map i :set im!<CR><c-o>:echo <CR>
map! <Esc> <c-o>:set im!<CR>:echo <CR>
map a :set im<CR><c-o>l<c-o>:echo <CR>
map A :set im<CR><c-o>$<c-o>:echo <CR>
map o :set im<CR><c-o>$<c-o>:echo <CR><CR>
map O :set im<CR><c-o>^<c-o>:echo <CR><CR><c-o>k
