return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			format_on_save = { lsp_fallback = true },
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				rust = { "rustfmt" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				go = { "gofmt" },
			},
		})
	end,
}
