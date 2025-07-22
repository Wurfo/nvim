return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup({})
		-- Integrate with nvim-cmp for better autopairs on completion confirm
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
