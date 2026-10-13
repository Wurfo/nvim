return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,

        opts = {
            style = "night",
            transparent = true,

            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },

            on_colors = function(colors)
                colors.bg = "NONE"
            end,
        },

        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd("colorscheme tokyonight")
        end,
    },
}
