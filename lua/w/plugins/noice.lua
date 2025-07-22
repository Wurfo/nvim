return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
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
			messages = { enabled = true }, -- enabled messages again
			popupmenu = { enabled = true }, -- enabled popupmenu for input UI
		})
	end,
}
