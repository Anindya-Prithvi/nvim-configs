local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function buffermap(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_buf_set_keymap(0, mode, lhs, rhs, {noremap=true})
end


local function cppfuns() 
    buffermap("n", "cpp", ":w<CR>:te bash ~/.config/nvim/bin/cppcar %:r <CR>i")
    buffermap("i", "<C-_>", "<Esc>^i// <Esc><S-A>")
end

local function rustfuns() 
    buffermap("n", "rr", ":w<CR>:te bash ~/.config/nvim/bin/rustcar %:r <CR>i")
    buffermap("i", "<C-_>", "<Esc>^i// <Esc><S-A>")
end

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {pattern = "*.cpp", callback = cppfuns})
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {pattern = "*.rs", callback = rustfuns})

map("n", "q", ":q <CR>")
map("i", "<Home>", "<Esc>0wi")
map("i", "{<CR>", "{<CR>}<Esc>O")
map("i", "(", "()<Esc>ha")
map("i", "[", "[]<Esc>ha")
