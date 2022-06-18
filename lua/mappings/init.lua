vim.cmd([[
    nnoremap cpp :w <bar> :te bash bar %:r <CR>i
    nnoremap q :q <CR>
    inoremap <Home> <Esc>0wi
]])
