local opt = vim.opt

-- Appearance
opt.number = true
opt.relativenumber = true
opt.cursorline = false
opt.signcolumn = "no"
opt.termguicolors = true
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 0
opt.wrap = true
opt.scrolloff = 5
opt.sidescrolloff = 5

-- Indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Windows
opt.splitright = true
opt.splitbelow = true

-- Files
opt.undofile = true
opt.confirm = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Responsiveness
opt.updatetime = 250
opt.timeoutlen = 400

-- Cursor
opt.guicursor = "a:block-blinkwait700-blinkon400-blinkoff250"

-- Whitespaces
-- opt.list = true
--
-- opt.listchars = {
--     space = "·",
-- }
