return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"rust",
				"go",
				"python",
				"javascript",
				"typescript",
				"java",
				"html",
				"css",
				"bash",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			-- Optional modules:
			autotag = {
				enable = true,
			},
		})
	end,
}
