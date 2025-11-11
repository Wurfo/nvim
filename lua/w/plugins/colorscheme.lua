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
				transparent = false, -- removes the bg color
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
		"vague2k/vague.nvim",
		priority = 1000,
		config = function()
			require("vague").setup({
				transparent = false,
				bold = true,
				italic = true,
				style = {
					boolean = "bold",
					number = "none",
					float = "none",
					error = "bold",
					comments = "italic",
					conditionals = "none",
					functions = "none",
					headings = "bold",
					operators = "none",
					strings = "italic",
					variables = "none",

					-- keywords
					keywords = "none",
					keyword_return = "italic",
					keywords_loop = "none",
					keywords_label = "none",
					keywords_exception = "none",

					-- builtin
					builtin_constants = "bold",
					builtin_functions = "none",
					builtin_types = "bold",
					builtin_variables = "none",
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
			vim.cmd.colorscheme("custom")
		end,
	},
}
