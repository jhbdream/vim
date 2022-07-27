nnoremap <silent> <F2> :AsyncRun -cwd=<root> make <cr>
nnoremap <F4> :call asyncrun#quickfix_toggle(6)<cr>

" auto remove whitespace
autocmd FileType c,cpp,asm,nasm autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd BufNew,BufRead *.S,*.s set ft=asm
