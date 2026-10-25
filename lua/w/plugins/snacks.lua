return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        picker = {
            enabled = true,
            sources = {
                files = {
                    hidden = true,
                    ignored = true,
                },
                grep = {
                    hidden = true,
                    ignored = true,
                },
            },
        },
    },

    keys = {
        {
            "<leader>ff",
            function()
                Snacks.picker.files()
            end,
            desc = "Find files",
        },
        {
            "<leader>fg",
            function()
                Snacks.picker.grep()
            end,
            desc = "Live grep",
        },
        {
            "<leader>fb",
            function()
                Snacks.picker.buffers()
            end,
            desc = "Find buffers",
        },
        {
            "<leader>fr",
            function()
                Snacks.picker.recent()
            end,
            desc = "Recent files",
        },
        {
            "<leader>fh",
            function()
                Snacks.picker.help()
            end,
            desc = "Help tags",
        },
        {
            "<leader>ut",
            function()
                Snacks.picker.colorschemes()
            end,
            desc = "Choose colorscheme",
        },
    },
}
