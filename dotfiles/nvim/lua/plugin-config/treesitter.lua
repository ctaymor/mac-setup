require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "ruby", "go", "vim", "help", "yaml", "bash", "git_rebase", "gitcommit", "gitignore", "jq", "json", "markdown",},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  },
}
vim.wo.foldmethod='expr'
vim.wo.foldexpr='nvim_treesitter#foldexpr()'
vim.wo.foldenable=false
