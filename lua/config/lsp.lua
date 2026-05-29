vim.opt.completeopt = { "menuone", "noselect", "popup" }

local on_attach = function (client, bufnr)
	vim.lsp.completion.enable(true, client.id, bufnr, {
		autotrigger = true,
		convert = function(item)
			return { abbr = item.label:gsub('%b()', '') }
		end,
	})
end

vim.lsp.config('rust', {
	cmd = { 'rust-analyzer' },
	filetypes = { 'rust' },
	root_markers = { 'cargo.toml', "cargo.lock" },
	on_attach = on_attach
})

vim.lsp.enable('rust')

vim.lsp.config('lua', {
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },
	root_markers = { 'lua', 'init.lua' },
	on_attach = on_attach
})

vim.lsp.enable('lua')

vim.lsp.config('python', {
	cmd = { 'pylsp' },
	filetypes = { 'python' },
	on_attach = on_attach
})

vim.lsp.enable('python')

local port = os.getenv 'GDScript_Port' or '6005'
local cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port))

vim.lsp.config('godot', {
	cmd = cmd,
	filetypes = { 'gd', 'gdscript', 'gdscript3' },
	root_markers = { 'project.godot', '.git' },
	on_attach = on_attach
})

vim.lsp.enable('godot')
