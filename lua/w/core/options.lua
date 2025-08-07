vim.g.mapleader = " " -- set leader key properly

-- Make cursor blink and be a bar
vim.opt.guicursor = "n-v-c-sm-i-ci-ve:block-blinkwait1000-blinkon500-blinkoff500"

vim.cmd.colorscheme("makurai_autumn")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 6
vim.opt.signcolumn = "no"
vim.opt.updatetime = 300
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = false -- disable line wrapping
vim.opt.colorcolumn = "80"

vim.opt.laststatus = 3
vim.opt.cmdheight = 0
vim.o.showmode = false
vim.opt.statusline = ""

local opt = vim.opt -- for conciseness

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
