vim.g.mapleader = " " -- set leader key properly

local opt = vim.opt -- for conciseness

-- Make cursor blink and be a bar
opt.guicursor = "n-v-c-sm-i-ci-ve:block-blinkwait1000-blinkon500-blinkoff500"
-- opt.guicursor = "a:block-blinkwait700-blinkon400-blinkoff400"
-- opt.guicursor = "a:block"

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.termguicolors = true
opt.scrolloff = 6
opt.signcolumn = "no"
opt.updatetime = 300
opt.clipboard = "unnamedplus"
opt.wrap = false
opt.colorcolumn = "80"

opt.laststatus = 3
opt.cmdheight = 0
vim.o.showmode = false
opt.statusline = ""

-- tabs & indentation
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
