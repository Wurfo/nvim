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
				"html",
				"cssls",
			},
		})

		local lspconfig = require("lspconfig")

		local on_attach = function(_, bufnr)
			local opts = { buffer = bufnr, silent = true }

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end

		local servers = {
			"tsserver",
			"rust_analyzer",
			"pyright",
			"clangd",
			"gopls",
			"lua_ls",
			"html",
			"cssls",
		}

		for _, server in ipairs(servers) do
			lspconfig[server].setup({
				on_attach = on_attach,
			})
		end

		vim.diagnostic.config({
			virtual_text = {
				prefix = "◼",
				spacing = 4,
			},
			signs = false,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})
	end,
}
