local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-rails'
Plug 'nvim-lualine/lualine.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'terrortylor/nvim-comment'

vim.call('plug#end')

require ('nvim-tree/main')
require ('lualine/main')
require ('lsp/main')
require ('treesitter/main')
require ('telescope/main')

local cmd = vim.cmd      	-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn      		-- call Vim functions
local g = vim.g        		-- global variables
local opt = vim.opt    		-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.colorcolumn = '80'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.whichwrap = "<,>,[,],h,l"

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
vim.g.colorscheme = 'onedark'
require('onedark').setup()

-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
-- insert mode completion options
opt.completeopt = 'menuone,noselect'


-- BINDINGS
local default_opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('', '<F1>', '<nop>', default_opts)
vim.api.nvim_set_keymap('', '<F1>', ':Telescope buffers<CR>', default_opts)
vim.api.nvim_set_keymap('', '<Q>', '<nop>', default_opts)
vim.api.nvim_set_keymap('', '<F2>', ':NvimTreeToggle<CR>', default_opts)
vim.api.nvim_set_keymap('', '<leader><F2>', ':NvimTreeFindFileToggle<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<tab>', '<C-W>w', default_opts)
vim.api.nvim_set_keymap('n', '<leader><CR>', ':e ~/.config/nvim/init.lua<CR>', default_opts)

vim.api.nvim_set_keymap('i', '<C-Down>', '<Esc>:m .+1<CR>', default_opts)
vim.api.nvim_set_keymap('i', '<C-Up>', '<Esc>:m .-2<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-Down>', ':m .+1<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-Up>', ':m .-2<CR>', default_opts)
vim.api.nvim_set_keymap('v', '<C-Down>', ":m '>+1<CR>gv", default_opts)
vim.api.nvim_set_keymap('v', '<C-Up>', ":m '<-2<CR>gv", default_opts)

vim.cmd('command W w')

require('nvim_comment').setup({comment_empty = false})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]]
