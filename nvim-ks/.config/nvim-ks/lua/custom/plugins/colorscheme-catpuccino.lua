return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			--vim.g.catppuccin_flavour = "auto"
			vim.cmd.colorscheme("catppuccin-frappe")
		end,
	},
}
