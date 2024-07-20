vim.api.nvim_set_keymap('n', '<C-q>', ':bdelete<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':w!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-s>', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-y>', ':redo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':m-2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':m+1<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-a>', 'gg0vG$', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':wincmd l<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-v>', ':lua require("rest-nvim").run()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-m>', '7j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-a>', '7k', { noremap = true, silent = true })
