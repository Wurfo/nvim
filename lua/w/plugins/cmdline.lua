return {
    "rachartier/tiny-cmdline.nvim",
    init = function()
        vim.o.cmdheight = 0
        vim.g.tiny_cmdline = { border = "rounded" }

        local function set_highlights()
            for group, source in pairs({
                TinyCmdlineNormal = "MsgArea",
                TinyCmdlineBorder = "FloatBorder",
            }) do
                local highlight = vim.api.nvim_get_hl(0, { name = source, link = false })
                highlight.bg = nil
                vim.api.nvim_set_hl(0, group, highlight)
            end
        end

        vim.api.nvim_create_autocmd("ColorScheme", { callback = set_highlights })
        set_highlights()
    end,
}
