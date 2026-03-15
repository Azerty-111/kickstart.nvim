function FixeTheme (color)
	-- color = color or "{}" -- {} is the theme name
	-- vim.cmd.colorscheme(color)
	
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

FixeTheme()
