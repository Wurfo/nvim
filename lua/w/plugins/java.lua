return {
	"mfussenegger/nvim-jdtls",
	ft = { "java" },
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local jdtls = require("jdtls")
		local home = vim.fn.expand("~")
		local workspace_dir = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
		local config = {
			cmd = {
				"jdtls",
				"-data",
				workspace_dir,
			},
			root_dir = require("jdtls.setup").find_root({ "gradlew", "mvnw", ".git" }),
			settings = {
				java = {
					home = os.getenv("JAVA_HOME"),
					configuration = {
						runtimes = {
							{
								name = "JavaSE-17",
								path = "/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home",
							},
						},
					},
					format = {
						enabled = true,
					},
				},
			},
			init_options = {
				bundles = {},
			},
			on_attach = function(_, bufnr)
				local opts = { buffer = bufnr }
				vim.keymap.set("n", "jgd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "jgr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "jK", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>jrn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>joi", jdtls.organize_imports, opts)
				vim.keymap.set("n", "<leader>jev", jdtls.extract_variable, opts)
				vim.keymap.set("n", "<leader>jem", jdtls.extract_method, opts)
			end,
		}
		jdtls.start_or_attach(config)
	end,
}
