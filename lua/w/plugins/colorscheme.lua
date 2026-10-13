return {
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
        -- you can set set configuration options here
        -- config = function()
        --     vim.g.zenbones_darken_comments = 45
        --     vim.cmd.colorscheme('zenbones')
        -- end
    },
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
