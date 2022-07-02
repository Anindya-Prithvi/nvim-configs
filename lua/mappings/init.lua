local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function cppfuns() 
    vim.api.nvim_buf_set_keymap(0, "n", "cpp", ":w <bar> :te bash bar %:r <CR>i", {noremap=true})
    map("i", "<C-_>", "<Esc>0wi// <Esc><S-A>")
end

-- vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
--                      pattern = {"*.c", "*.h"},
--                      command = "echo 'Entering a C or C++ file'",
--                    })

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {pattern = "*.cpp", callback = cppfuns})

map("n", "q", ":q <CR>")
map("i", "<Home>", "<Esc>0wi")

