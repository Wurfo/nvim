-- return {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
-- opts = {
--     suggestion = {
--         enabled = true,
--         auto_trigger = true,
--         keymap = {
--             accept = "<M-l>",
--             next = "<M-]>",
--             prev = "<M-[>",
--             dismiss = "<C-]>",
--         },
--     },
--     panel = {
--         enabled = false,
--     },
-- },
--}
return {
    "monkoose/neocodeium",
    event = "VeryLazy",

    config = function()
        local neocodeium = require("neocodeium")

        neocodeium.setup()

        vim.keymap.set("i", "<C-l>", neocodeium.accept)
    end,
}
