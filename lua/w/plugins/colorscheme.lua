return {
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("spherecustom")
		end,
	},
	{
		"slugbyte/lackluster.nvim",
	},
	{
		"jaredgorski/fogbell.vim",
	},
	{
		"Skardyy/makurai-nvim",
		config = function()
			-- you don't have to call setup
			require("makurai").setup({
				transparent = true, -- removes the bg color
				bordered = false, -- removes the bg color from floats/popups
				increase_contrast = false, -- only changes the line number and active line number for now.
			})
		end,
	},
	{
		"blazkowolf/gruber-darker.nvim",
		priority = 1000,
		opts = {
			bold = true,
			invert = {
				signs = false,
				tabline = false,
				visual = false,
			},
			italic = {
				strings = false,
				comments = false,
				operators = false,
				folds = false,
			},
			undercurl = true,
			underline = true,
		},
	},
	{
		"vague-theme/vague.nvim",
		priority = 1000,
		config = function()
			require("vague").setup({
				transparent = true, -- If true, background is not set
				bold = true, -- Disable bold globally
				italic = false, -- Disable italic globally
				-- on_highlights = function(hl, colors) end,
				colors = {
					bg = "#141415",
					inactiveBg = "#1c1c24",
					fg = "#cdcdcd",
					floatBorder = "#878787",
					line = "#252530",
					comment = "#606079",
					builtin = "#b4d4cf",
					func = "#c48282",
					string = "#e8b589",
					number = "#e0a363",
					property = "#c3c3d5",
					constant = "#aeaed1",
					parameter = "#bb9dbd",
					visual = "#333738",
					error = "#d8647e",
					warning = "#f3be7c",
					hint = "#7e98e8",
					operator = "#90a0b5",
					keyword = "#6e94b2",
					type = "#9bb4bc",
					search = "#405065",
					plus = "#7fa563",
					delta = "#f3be7c",
				},
			})
		end,
	},
	{
		"ring0-rootkit/ring0-dark.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function() end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"tjdevries/colorbuddy.nvim",
	},
	{
		"morhetz/gruvbox",
	},
	{
		"bartekprtc/gruv-vsassist.nvim",
	},
	{
		"sainnhe/gruvbox-material",
	},
	{
		"Mofiqul/vscode.nvim",
	},
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			vim.g.sonokai_transparent_background = "1"
			vim.g.sonokai_enable_italic = "0"
			vim.g.sonokai_style = "andromeda"
		end,
	},
	{
		"loctvl842/monokai-pro.nvim",
	},
	{
		"lifepillar/vim-solarized8",
	},
	{
		"darianmorat/gruvdark.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"ficd0/ashen.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"mitch1000/backpack.nvim",
		config = function()
			require("backpack").setup()
		end,
	},
	{
		"sainnhe/everforest",
		priority = 1000,
		config = function() end,
	},
	{
		"Shatur/neovim-ayu",
		priority = 1000,
		config = function() end,
	},
	{
		"shaunsingh/nord.nvim",
		priority = 1000,
		config = function() end,
	},
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
		end,
	},
	{
		"bjarneo/ash.nvim",
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme vague]])
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		-- config = function()
		--     vim.g.zenbones_darken_comments = 45
		--     vim.cmd.colorscheme('zenbones')
		-- end
	},
	{
		"ember-theme/nvim",
		name = "ember",
		priority = 1000,
		config = function()
			require("ember").setup({
				variant = "ember-soft", -- "ember" | "ember-soft" | "ember-light"
			})
			-- vim.cmd("colorscheme ember")
		end,
	},
	{
		"oskarnurm/koda.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- require("koda").setup({ transparent = true })
			-- vim.cmd.colorscheme("vague")
		end,
	},
	{
		"erikbackman/brightburn.vim",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},
			})

			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
