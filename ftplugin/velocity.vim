let newPath = expand('%:p:h')

while fnamemodify(newPath, ':t') != 'src' && fnamemodify(newPath, ':t') != 'view' && newPath != '/'
    let newPath = fnamemodify(newPath, ':h')
endwhile

if fnamemodify(newPath, ':t') == 'view' || fnamemodify(newPath, ':t') == 'src'
    execute 'setlocal path+=' . newPath
endif
