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
vim.g.copilot_filetypes = {
    ["*"] = false,
    ["markdown"] = true,
    ["c++"] = true,
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
