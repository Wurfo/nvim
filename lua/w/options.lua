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
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
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

--- Cursor
-- opt.guicursor = "a:block-blinkwait700-blinkon400-blinkoff250"
vim.opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Whitespaces
-- opt.list = true
--
-- opt.listchars = {
--     space = "·",
-- }
