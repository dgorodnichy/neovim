local actions = require('telescope.actions')require('telescope').setup{
  pickers = {
    buffers = {
      sort_lastused = true
    }
  }
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local default_opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<F1>', ':Telescope buffers<CR>', default_opts)
vim.api.nvim_set_keymap('v', '<C-f>', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope live_grep<CR>', default_opts)
