function! SwitchFenbiFile(extension)
    let path = expand("%:p:r") . "." . a:extension
    exec "e " . path
endfunction

map <leader>tj :call SwitchFenbiFile("js")<CR>
map <leader>th :call SwitchFenbiFile("handlebars")<CR>
map <leader>tm :call SwitchFenbiFile("mustache")<CR>
map <leader>tl :call SwitchFenbiFile("less")<CR>
map <leader>tv :call SwitchFenbiFile("vm")<CR>
