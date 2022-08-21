-- vim.cmd[[
-- let g:tokyonight_colors = {
--    \ 'bg' : '#282c34'
--\ }
vim.cmd[[colorscheme tokyonight]]
-- vim.g.tokyonight_colors = {bg = '#282c34'}
vim.g.tokyonight_transparent = true
vim.cmd[[
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
hi NormalNC guibg=none ctermbg=none
hi NormalFloat guibg=none ctermbg=none
hi NvimTreeBg guibg=none ctermbg=none
hi NvimTreeNormal guibg=none ctermbg=none
hi NvimTreeNormalNC guibg=none ctermbg=none
hi LineNr guifg=#9960dd
hi CursorLineNr guifg=#dd60dd
hi CopilotSuggestion guifg=#3fada8 ctermfg=8
]]
