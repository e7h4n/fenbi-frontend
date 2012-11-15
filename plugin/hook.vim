" Generate tags
function! FileChangeHook()
    let file = fnamemodify(findfile('after-file-change', '.;'), ':p')
    if executable(file)
        execute ':silent !' . file . ' ' . expand("%:p")
    endif
endfunction

autocmd BufWritePost *.js,*.less,*.vm,*.handlebars,*.mustache call FileChangeHook()
