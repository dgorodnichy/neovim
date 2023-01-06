require'nvim-treesitter.configs'.setup {
  ensure_installed = {"ruby", "lua", "css", "html", "javascript"},
  sync_install = false, 
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}


