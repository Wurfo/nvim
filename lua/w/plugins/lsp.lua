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
			automatic_enable = {
				exclude = {
					"jdtls",
				},
			},
			handlers = {
				-- default handler
				function(server)
					vim.lsp.config[server] = {
						on_attach = function(_, bufnr)
							local opts = { noremap = true, silent = true, buffer = bufnr }
							vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
							vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
							vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
							vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
						end,
					}
					vim.lsp.enable(server)
				end,

				-- clangd override
				["clangd"] = function()
					vim.lsp.config.clangd = {
						cmd = {
							"clangd",
							"--background-index",
							"--clang-tidy",
							"--header-insertion=iwyu",
							"--completion-style=detailed",
							"--compile-commands-dir=build",
						},
						on_attach = function(_, bufnr)
							local opts = { noremap = true, silent = true, buffer = bufnr }
							vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
							vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
							vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
							vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
						end,
					}
					vim.lsp.enable("clangd")
				end,
			},
		})

		-- Diagnostics: inline only, clean look
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
