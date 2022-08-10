-- vim.cmd[[
-- let g:tokyonight_colors = {
--    \ 'bg' : '#282c34'
--\ }
vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_colors = {
    bg = '#282c34'
}
vim.g.tokyonight_transparent = vim.g.transparent_enabled
vim.cmd[[
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
]]
