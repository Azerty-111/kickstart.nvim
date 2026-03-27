-- idk a quoi ça sere (lancer la coloration en fonction du fileType je crois
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})
