return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			--vim.g.catppuccin_flavour = "auto"
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
