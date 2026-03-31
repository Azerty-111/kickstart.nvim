vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set('n', '<leader>ex', vim.cmd.Ex)
vim.keymap.set('n', '<leader>so', function()
	vim.cmd('w')
	vim.cmd('so')
end)

vim.cmd('inoremap jk <Esc> ')
