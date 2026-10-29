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

-- require("sanzo").setup({
--     transparent = false, -- remove background
--     italic = true, -- italicize comments and folds
--     on_highlights = function(h, p) -- one-off group overrides
--         -- see :h nvim_set_hl for all available keys (fg, bg, bold, italic, ...)
--         h.SanzoComment = { fg = p.role_comment, bold = true }
--     end,
-- })

-- require("vim._core.ui2").enable()
require("vim._core.ui2").enable({
    enable = true,
    msg = {
        targets = {
            [""] = "msg",
            empty = "cmd",
            bufwrite = "msg",
            confirm = "cmd",
            emsg = "pager",
            echo = "msg",
            echomsg = "msg",
            echoerr = "pager",
            completion = "cmd",
            list_cmd = "pager",
            lua_error = "pager",
            lua_print = "msg",
            progress = "pager",
            rpc_error = "pager",
            quickfix = "msg",
            search_cmd = "cmd",
            search_count = "cmd",
            shell_cmd = "pager",
            shell_err = "pager",
            shell_out = "pager",
            shell_ret = "msg",
            undo = "msg",
            verbose = "pager",
            wildlist = "cmd",
            wmsg = "msg",
            typed_cmd = "cmd",
        },
        cmd = {
            height = 0.5,
        },
        dialog = {
            height = 0.5,
        },
        msg = {
            height = 0.3,
            timeout = 5000,
        },
        pager = {
            height = 0.5,
        },
    },
})

require("w.options")
require("w.keymaps")
-- require("w.autocmds")
require("w.lazy")

-- vim.cmd([[colorscheme solarized-osaka]])
-- vim.cmd([[colorscheme everforest]])
-- vim.cmd([[colorscheme catppuccin-mocha]])
-- vim.cmd([[colorscheme gruvbox-material]])
vim.cmd([[colorscheme gruber-darker-renaissance]])

vim.cmd(":hi statusline guibg=NONE") -- not sure about this
