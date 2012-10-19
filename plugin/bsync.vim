autocmd BufWritePost * call system('bsync '.expand('%:p').' &')
