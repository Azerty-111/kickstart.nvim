vim.lsp.config('rust', {
  cmd = {'rust-analyzer'},
  filetypes = {'rust'},
  root_markers = {'cargo.toml', "cargo.lock"},
})

vim.lsp.enable('rust')
