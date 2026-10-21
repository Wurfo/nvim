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
        "WeiTing1991/suannhai.nvim",
        lazy = false,
        priority = 1000,
        build = "python3 scripts/sync-palettes.py",
        config = function()
            require("suannhai").setup({
                transparent = true,
            })
        end,
    },
    {
        "Aejkatappaja/cendre",
        lazy = false,
        priority = 1000,
        config = function()
            require("cendre").setup({
                background = "hard", -- "hard" | "medium" | "soft"
                italic_virtual_text = false,
            })
        end,
    },
    {
        "g-kirti/hardhat.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("hardhat").setup({
                -- optional settings
            })
        end,
    },
    {
        "mitander/flume.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.opt.termguicolors = true
            -- require("flume").setup({
            --     schema = "dusk",
            --     transparent = true,
            --     styles = {
            --         comments = { italic = true },
            --     },
            -- })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                float = {
                    transparent = true,
                },
            })
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                transparent = true,
            })
        end,
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
            -- vim.cmd("colorscheme gruber-darker")
            -- vim.cmd("colorscheme catppuccin-mocha")
            vim.cmd("colorscheme suannhai-rouiro")
            -- vim.cmd("colorscheme kanagawa-dragon")
            -- vim.cmd("colorscheme solarized-osaka")
        end,
    },
}
