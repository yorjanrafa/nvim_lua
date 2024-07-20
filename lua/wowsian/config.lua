vim.opt.termguicolors = true
vim.o.cursorlineopt = 'number,line'
vim.cmd [[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=CursorColumn
   augroup END

]]

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  pattern = { "*" },
  command = "highlight link CursorLine CursorColumn",
})

-- Enable clipboard support
vim.opt.clipboard = 'unnamedplus'

-- Highlight current line when yanking
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 400,
    })
  end,
  group = highlight_group,
  pattern = '*',
})



-- General settings
vim.opt.mouse = 'a'
vim.opt.showcmd = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.encoding = 'utf-8'
vim.opt.showmatch = true

-- Colors and theme
vim.opt.termguicolors = true
vim.opt.background = 'dark'

-- Indentation and formatting
vim.cmd("filetype indent on")
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smarttab = true
vim.opt.expandtab = true

-- Python-specific settings
vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'python',
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end
})

-- Syntax highlighting
vim.opt.syntax = "enable"


-- Sane editing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.colorcolumn = '80'
vim.opt.expandtab = true

-- Python file-specific settings
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = '*.py',
  callback = function()
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
    vim.opt_local.smarttab = true
    vim.opt_local.autoindent = true
  end
})

vim.api.nvim_create_autocmd('BufRead', {
  pattern = '*.py',
  callback = function()
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
    vim.opt_local.smarttab = true
    vim.opt_local.autoindent = true
  end
})
vim.opt.termguicolors = true
