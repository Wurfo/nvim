return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"ts_ls",
				"rust_analyzer",
				"pyright",
				"clangd",
				"gopls",
				"lua_ls",
			},
		})
		local lspconfig = require("lspconfig")
		local on_attach = function(_, bufnr)
			local opts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end
		for _, server in ipairs({ "ts_ls", "rust_analyzer", "pyright", "clangd", "gopls", "lua_ls" }) do
			lspconfig[server].setup({ on_attach = on_attach })
		end

		-- Diagnostic config: inline virtual text only, no signs
		vim.diagnostic.config({
			virtual_text = {
				prefix = "●",
				spacing = 4,
			},
			signs = false, -- no signs in the gutter
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})
	end,
}
