vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.isfname:append("@-@")
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>ex', vim.cmd.Ex)
vim.keymap.set('n', "<leader>sp", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set('n', '<leader>so', function()
	vim.cmd('w')
	vim.cmd('so')
end)
vim.keymap.set('n', "<leader>xf", ":!cargo run<enter>")

vim.keymap.set('n', "<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>")
vim.keymap.set('n', '<leader>fo', function()
	vim.lsp.buf.format()
end)

vim.keymap.set('n', "<leader>gc", function()
	vim.cmd(":!git add .")
	local com = vim.fn.input("comment -> ")
	vim.cmd(":!git ci -m '" .. com .. "'")
end)
vim.keymap.set('n', "<leader>gp", ":!git push")

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set('n', "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set('n', "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set('i', "<C-k>", "<C-p>") -- TODO
vim.keymap.set('i', "<C-j>", "<C-n>") -- TODO
vim.keymap.set('n', "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set('n', "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set('n', "n", "nzzzv")
vim.keymap.set('n', "N", "Nzzzv")

vim.keymap.set('i', "jk", "<Esc>")
vim.keymap.set('c', "jk", "<Esc>")
vim.keymap.set('v', "jk", "<Esc>") -- maybe anoying, idk
