local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(path) then
    local output = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        path,
    })

    if vim.v.shell_error ~= 0 then
        error("Failed to install lazy.nvim:\n" .. output)
    end
end

vim.opt.rtp:prepend(path)

require("lazy").setup({
    spec = {
        { import = "w.plugins" },
    },

    install = {
        -- colorscheme = { "habamax" },
    },

    checker = {
        enabled = false,
    },

    change_detection = {
        notify = false,
    },
})
