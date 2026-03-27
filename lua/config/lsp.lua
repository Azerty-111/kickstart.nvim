vim.lsp.config('rust', {
  cmd = {'rust-analyzer'},
  filetypes = {'rust'},
  root_markers = {'cargo.toml', "cargo.lock"},
})
print("Err('lsp call')")
-- vim.lsp.enable('rust')
