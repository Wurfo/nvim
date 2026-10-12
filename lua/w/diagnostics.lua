vim.diagnostic.config({
    signs = false,
    underline = true,
    virtual_text = false,
    virtual_lines = false,
    severity_sort = true,
    update_in_insert = false,

    float = {
        border = "rounded",
        source = "if_many",
        header = "",
        prefix = "",
    },
})
