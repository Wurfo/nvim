return {
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
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            -- vim.cmd.colorscheme("tokyonight")
        end,
    },

    {
        "sainnhe/everforest",
        lazy = false,
        config = function()
            vim.g.everforest_background = "hard"
            vim.g.everforest_transparent_background = 2
        end,
    },

    {
        "miladggg/neonwave.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "olimorris/onedarkpro.nvim",
        lazy = false,
    },

    {
        "sainnhe/gruvbox-material",
        lazy = false,
    },

    {
        "y9san9/y9nika.nvim",
        lazy = false,
    },

    {
        "harshrajsachan/omni.nvim",
        lazy = false,
        init = function()
            vim.g.omnitheme_transparent = false
        end,
    },

    {
        "blazkowolf/gruber-darker.nvim",
        lazy = false,
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
        dependencies = { "rktjmp/lush.nvim" },
        lazy = false,
    },

    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        opts = {
            style = "vivid",
            transparent = true,
        },
    },

    {
        "WeiTing1991/suannhai.nvim",
        lazy = false,
        build = "python3 scripts/sync-palettes.py",
        opts = {
            transparent = true,
        },
    },

    {
        "Aejkatappaja/cendre",
        lazy = false,
        opts = {
            background = "hard",
            italic_virtual_text = false,
        },
    },

    {
        "g-kirti/hardhat.nvim",
        lazy = false,
        -- opts = {},
    },

    {
        "mitander/flume.nvim",
        lazy = false,
        opts = {
            schema = "dusk",
            transparent = true,
            styles = {
                comments = { italic = true },
            },
        },
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        opts = {
            transparent_background = false,
            float = {
                transparent = false,
            },
        },
    },

    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        opts = {
            transparent = true,
        },
    },
    {
        "rezniqov/soviet.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "Aejkatappaja/sora",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "zitrocode/carvion.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "MuhammedZohaib/emberbox.nvim",
        lazy = false,
        priority = 1000,
    },
}
