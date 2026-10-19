return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>fm",
            function()
                require("conform").format({
                    async = true,
                    lsp_format = "fallback",
                })
            end,
            mode = { "n", "v" },
            desc = "Format buffer",
        },
    },

    opts = {
        formatters_by_ft = {
            c = { "clang_format" },
            h = { "clang_format" },
            cpp = { "clang_format" },
            rust = { "rustfmt" },
            go = { "gofmt" },
            lua = { "stylua" },
            python = { "ruff_format" },

            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },

            html = { "prettier" },
            css = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            markdown = { "prettier" },
        },

        default_format_opts = {
            lsp_format = "fallback",
        },

        format_on_save = function(bufnr)
            return {
                timeout_ms = 1000,
                lsp_format = vim.bo[bufnr].filetype == "java" and "prefer" or "fallback",
            }
        end,
    },
}
