vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.filetype.add({
    extension = {
        h = "c",
        hpp = "cpp",
    },
})

vim.pack.add({
    "https://codeberg.org/navahas/sanzo.nvim",
    "https://github.com/vossenwout/guts.nvim",
})

require("sanzo").setup({
    transparent = false, -- remove background
    italic = true, -- italicize comments and folds
    on_highlights = function(h, p) -- one-off group overrides
        -- see :h nvim_set_hl for all available keys (fg, bg, bold, italic, ...)
        -- h.SanzoComment = { fg = p.role_comment, bold = true }
    end,
})

vim.cmd("colorscheme guts")

require("w.options")
require("w.keymaps")
-- require("w.autocmds")
require("w.lazy")
