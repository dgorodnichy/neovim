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
Plug 'neovim/nvim-lspconfig'
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'windwp/nvim-autopairs'
Plug 'f-person/git-blame.nvim'
Plug 'MaxMEllon/vim-jsx-pretty'

vim.call('plug#end')

require ('nvim-tree/main')
require ('lualine/main')
require ('lsp/main')
require ('treesitter/main')
require ('telescope/main')
require ('bindings/main')
require ('autopairs/main')

local cmd = vim.cmd      	-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn      		-- call Vim functions
local g = vim.g        		-- global variables
local opt = vim.opt    		-- global/buffer/windows-scoped options
local o = vim.o

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile
opt.shiftwidth = 2            -- shift 4 spaces when tab
opt.tabstop = 2               -- 1 tab == 4 spaces
opt.expandtab = true

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
o.scrolljump = 1
o.scrolloff = 5

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
vim.cmd('colorscheme onedark')
-- vim.g.colorscheme = 'onedark'
require('onedark').setup()

-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
-- insert mode completion options
opt.completeopt = 'menuone,noselect'

require('nvim_comment').setup({comment_empty = false})

-- command BufOnly silent! execute "%bd|e#|bd#"
