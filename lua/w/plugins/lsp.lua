return {
    "mason-org/mason-lspconfig.nvim",

    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },

    opts = {
        ensure_installed = {
            "lua_ls",
            "clangd",
            "rust_analyzer",
            "gopls",
            "pyright",
            "ts_ls",
            "html",
            "cssls",
            "jsonls",
            "bashls",
        },
    },

    config = function(_, opts)
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                },
            },
        })

        require("mason-lspconfig").setup(opts)
    end,
}
