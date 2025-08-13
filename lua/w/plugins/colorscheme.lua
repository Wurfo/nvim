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

			-- vim.cmd.colorscheme("gruber-darker")
		end,
	},
	{
		"blazkowolf/gruber-darker.nvim",
		opts = {
			bold = false,
		},
	},
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				transparent = true,
			})
			vim.cmd.colorscheme("vague")
		end,
	},
	{
		{
			"ring0-rootkit/ring0-dark.nvim",
			priority = 1000, -- Make sure to load this before all the other start plugins.
			init = function()
				-- vim.cmd.colorscheme("lackluster-dark")
			end,
		},
	},
}
