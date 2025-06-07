-- NOTE: treesitter is already part of the base config, this only sets ensure_installed.
-- This allows to limit the number of changes made in the main kickstart init.lua
return {
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"go",
				"gomod",
				"html",
				"json",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"rust",
				"vim",
				"vimdoc",
				"xml",
				"yaml",
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
