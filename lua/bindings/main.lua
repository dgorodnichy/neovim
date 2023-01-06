local default_opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('', '<F1>', '<nop>', default_opts)
vim.api.nvim_set_keymap('', '<F1>', ':Telescope buffers<CR>', default_opts)
vim.api.nvim_set_keymap('', '<Q>', '<nop>', default_opts)
vim.api.nvim_set_keymap('', '<F2>', ':NvimTreeToggle<CR>', default_opts)
vim.api.nvim_set_keymap('', '<leader><F2>', ':NvimTreeFindFileToggle<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<tab>', '<C-W>w', default_opts)
vim.api.nvim_set_keymap('n', '<leader><CR>', ':e ~/.config/nvim/init.lua<CR>', default_opts)

vim.api.nvim_set_keymap('n', '<leader>ca', ':bufdo bd<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<leader>co', ':%bd|e#|bd#<CR>', default_opts)

vim.api.nvim_set_keymap('i', '<C-Down>', '<Esc>:m .+1<CR>', default_opts)
vim.api.nvim_set_keymap('i', '<C-Up>', '<Esc>:m .-2<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-Down>', ':m .+1<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-Up>', ':m .-2<CR>', default_opts)
vim.api.nvim_set_keymap('v', '<C-Down>', ":m '>+1<CR>gv", default_opts)
vim.api.nvim_set_keymap('v', '<C-Up>', ":m '<-2<CR>gv", default_opts)

vim.api.nvim_set_keymap('v', '<', "<gv", default_opts)
vim.api.nvim_set_keymap('v', '>', ">gv", default_opts)
