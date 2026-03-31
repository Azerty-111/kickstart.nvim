vim.lsp.config('rust', {
  cmd = {'rust-analyzer'},
  filetypes = {'rust'},
  root_markers = {'cargo.toml', "cargo.lock"},
})

vim.lsp.enable('rust')

vim.lsp.config('lua', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'lua', 'init.lua'},
})

vim.lsp.enable('lua')

vim.lsp.config('python', {
  cmd = {'python-lsp-server'},
  filetypes = {'python'},
})

vim.lsp.enable('python')
