return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			config = function()
				require("notify").setup({
					background_colour = "#000000", -- or match your theme
				})
			end,
		},
	},
	config = function()
		require("noice").setup({
			cmdline = {
				enabled = true,
				view = "cmdline_popup",
				opts = {
					border = "rounded",
					position = { row = 10, col = "50%" },
					size = { width = 60 },
					winhighlight = { Normal = "Normal", FloatBorder = "Normal" },
				},
			},
			messages = { enabled = true },
			popupmenu = { enabled = true },
		})
	end,
}
