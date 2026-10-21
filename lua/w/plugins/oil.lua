return {
    "stevearc/oil.nvim",
    dependencies = {
        { "Mirsmog/real-icons.nvim" },
    },

    opts = {
        default_file_explorer = true,
        columns = { "permissions", "size", "mtime", "icon" },
        view_options = {
            show_hidden = true,
        },
        keymaps = {
            ["<C-h>"] = false,
            ["<C-l>"] = false,
        },
    },

    keys = {
        {
            "<leader>e",
            "<cmd>Oil<CR>",
            desc = "File explorer",
        },
    },
}
