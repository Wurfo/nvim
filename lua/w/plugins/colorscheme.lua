return {
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gorgoroth")
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
	},
	{
		"blazkowolf/gruber-darker.nvim",
		opts = {
			bold = false,
		},
	},
}
