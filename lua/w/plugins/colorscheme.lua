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
		priority = 1000,
		opts = {
			bold = false,
		},
	},
	{
		"vague2k/vague.nvim",
		priority = 1000,
		config = function()
			require("vague").setup({
				transparent = true,
			})
			vim.cmd.colorscheme("custom")
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
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("bamboo").setup({
				-- Main options --
				-- NOTE: to use the light theme, set `vim.o.background = 'light'`
				style = "vulgaris", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
				toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
				toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
				transparent = false, -- Show/hide background
				dim_inactive = false, -- Dim inactive windows/buffers
				term_colors = true, -- Change terminal color as per the selected theme style
				ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
				cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

				-- Change code style ---
				-- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
				-- You can also configure styles with a string, e.g. keywords = 'italic,bold'
				code_style = {
					comments = { italic = true },
					conditionals = { italic = true },
					keywords = {},
					functions = {},
					namespaces = { italic = true },
					parameters = { italic = true },
					strings = {},
					variables = {},
				},

				-- Lualine options --
				lualine = {
					transparent = false, -- lualine center bar transparency
				},

				-- Custom Highlights --
				colors = {}, -- Override default colors
				highlights = {}, -- Override highlight groups

				-- Plugins Config --
				diagnostics = {
					darker = false, -- darker colors for diagnostic
					undercurl = true, -- use undercurl instead of underline for diagnostics
					background = true, -- use background color for virtual text
				},
			})
		end,
	},
}
