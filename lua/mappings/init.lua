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
    buffermap("n", "ff", ":g /^#define TESTS.*/d<CR>")
    buffermap("n", "tt", "m1gg0i#define TESTS<CR><Esc>`1")
    buffermap("n", "<C-b>", ":!mkdir -p build && cd build && cmake .. && make<CR>")
end

local function rustfuns() 
    buffermap("n", "rr", ":w<CR>:te bash ~/.config/nvim/bin/rustcar %:r <CR>i")
    buffermap("i", "<C-_>", "<Esc>^i// <Esc><S-A>")
    buffermap("n", "ff", ":%s/const TEST: bool = .*/const TEST: bool = false;<CR>")
    buffermap("n", "tt", ":%s/const TEST: bool = .*/const TEST: bool = true;<CR>")
end

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {pattern = {"*.cpp", "*.hpp", "*.c", "*.h"}, callback = cppfuns})
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {pattern = "*.rs", callback = rustfuns})

-- map("n", "q", ":q <CR>")
map("i", "<Home>", "<Esc>0wi")
map("i", "{<CR>", "{<CR>}<Esc>O")
map("i", "(", "()<Esc>ha")
map("i", "[", "[]<Esc>ha")
map("n", "<C-f>", ":NvimTreeToggle<CR>")
