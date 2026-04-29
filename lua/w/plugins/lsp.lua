return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	config = function()
		require("mason").setup({
			ui = {
				border = "rounded",
			},
			log_level = vim.log.levels.ERROR,
		})

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

		-- LSP keymaps
		local on_attach = function(_, bufnr)
			local opts = { buffer = bufnr, silent = true }

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end

		-- Modern Neovim LSP config (NO lspconfig.setup anymore)
		local servers = {
			"ts_ls",
			"rust_analyzer",
			"pyright",
			"clangd",
			"gopls",
			"lua_ls",
			"html",
			"cssls",
		}

		-- global defaults
		vim.lsp.config("*", {
			on_attach = on_attach,
		})

		-- per-server config (optional override point)
		for _, server in ipairs(servers) do
			vim.lsp.config(server, {})
		end

		vim.lsp.enable(servers)

		-- diagnostics UI
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
