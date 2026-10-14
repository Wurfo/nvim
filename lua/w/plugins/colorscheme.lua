return {
    {
        "harshrajsachan/omni.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.omnitheme_transparent = true
            -- vim.cmd("colorscheme omni-blackout")
        end,
    },
    {
        "wtfox/luna.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            accent = 0.7, -- 0-1, blends syntax accents toward grey_light; 1 = full color
            plugins = {
                all = true, -- enable every plugin integration unconditionally
                auto = true, -- when plugins.all is false, autodetect via lazy.nvim
            },
            on_colors = function(colors) end,
            on_highlights = function(highlights, colors) end,
        },
    },
    {
        "blazkowolf/gruber-darker.nvim",
        opts = {
            bold = true,
            italic = {
                strings = false,
                comments = false,
            },
        },
    },
    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
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
            -- vim.cmd("colorscheme tokyonight")
            vim.cmd("colorscheme luna")
        end,
    },
}
