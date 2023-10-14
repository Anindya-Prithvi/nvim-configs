local set = vim.opt
set.expandtab = true
set.number = true
set.shiftwidth = 4
set.si = true
set.ai = true
set.ic = true
set.mouse = a
set.smartcase = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true
set.cursorline = true

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', {silent = true, expr = true})
vim.api.nvim_set_keymap("n", "<C-b>", '!mkdir -p build && cd build && cmake .. && make<CR>', {silent = true, expr = true})


vim.g.copilot_filetypes = {
    ["*"] = true,
    ["markdown"] = true,
    ["c++"] = true,
    ["cpp"] = true,
    ["python"] = true,
    ["rust"] = true,
    ["c"] = true,
    ["java"] = true,
    ["javascript"] = true,
    ["typescript"] = true,
    ["html"] = true,
    ["css"] = true,
    ["lua"] = true,
    ["php"] = true,
    ["go"] = true,
    ["kotlin"] = true,
    ["sql"] = true,
    ["json"] = true,
    ["yaml"] = true,
    ["xml"] = true,
}

require('colorizer').setup()
vim.g.copilot_enabled = false
set.wrap = false
-- vim.api.nvim_create_autocmd({"BufWrite"}, {pattern = "*.cpp", command = ":%!astyle -v"})
