return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup({})

        treesitter.install({
            "c",
            "cpp",
            "rust",
            "go",
            "java",
            "python",
            "lua",
            "javascript",
            "typescript",
            "tsx",
            "html",
            "css",
            "json",
            "bash",
            "markdown",
            "markdown_inline",
            "vim",
            "vimdoc",
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                pcall(vim.treesitter.start, args.buf)
            end,
        })
    end,
}
