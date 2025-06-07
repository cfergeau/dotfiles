-- NOTE: conform is already part of the base config, this only sets the formatters we are going to use.
-- This allows to limit the number of changes made in the main kickstart init.lua
return {
	{ -- Autoformat
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				go = { "goimports", "gofmt" },
				lua = { "stylua" },
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use 'stop_after_first' to run the first available formatter from the list
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
