local function filepath()
  local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then
      return " "
  end

  return string.format(" %%<%s/", fpath)
end

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then
      return ""
  end
  return fname .. " "
end

local function filetype()
  return string.format(" %s ", vim.bo.filetype):upper()
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %P %l:%c "
end

Statusline = {}

Statusline.active = function()
  return table.concat {
    "%#Statusline#",
    "%#Normal# ",
    filepath(),
    filename(),
    "%#Normal#",
    "%=%#StatusLineExtra#",
    filetype(),
    lineinfo(),
  }
end

function Statusline.inactive()
  return " %F"
end

function Statusline.short()
  return "%#StatusLineNC#   NvimTree"
end

vim.api.nvim_create_augroup("Statusline", {clear = true})

vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
    group = "Statusline",
    pattern = "*", 
    callback = function()
      vim.opt_local.statusline = Statusline.active()
  end
  }
)

vim.api.nvim_create_autocmd({"WinLeave", "BufLeave"}, {
    group = "Statusline",
    pattern = "*", 
    callback = function()
      vim.opt_local.statusline = Statusline.inactive()
  end
  }
)
-- WinEnter,BufEnter,FileType NvimTree
vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
    group = "Statusline",
    pattern = "NvimTree", 
    callback = function()
      vim.opt_local.statusline = Statusline.short()
  end
  }
)
