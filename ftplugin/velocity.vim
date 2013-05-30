let newPath = expand('%:p:h')

while fnamemodify(newPath, ':t') != 'view' && newPath != '/'
    let newPath = fnamemodify(newPath, ':h')
endwhile

if fnamemodify(newPath, ':t') == 'view'
    execute 'setlocal path+=' . newPath
endif
