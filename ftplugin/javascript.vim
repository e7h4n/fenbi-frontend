if (!exists("*FenbiFile"))
    function! FenbiFile(file)
        if (stridx(a:file, "../template/") != -1)
            let path = expand("%:p:h") . "/" . substitute(a:file, "\\.\\.\\/template\\/[a-zA-Z0-9]*\\/", "", "") . ".mustache"
            exec "e " . path
        else
            let path = expand("%:p:h") . "/" . a:file . ".js"
            exec "e " . path
        endif
    endfunction
endif

map gf :call FenbiFile(expand("<cfile>"))<CR>
