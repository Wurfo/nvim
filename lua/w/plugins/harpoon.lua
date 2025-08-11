return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED: initialize harpoon
		harpoon:setup()

		-- Helper function for cleaner keymaps
		local function map(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
		end

		-- Add file to harpoon
		map("n", "<leader>a", function()
			harpoon:list():add()
		end, "Harpoon Add File")

		vim.keymap.set("n", "<leader>hr", function()
			require("harpoon"):list():remove()
		end, { desc = "Remove file from Harpoon list" })

		-- Toggle quick menu
		map("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, "Harpoon Menu")

		-- Navigate to specific files
		map("n", "<leader>1", function()
			harpoon:list():select(1)
		end, "Harpoon File 1")
		map("n", "<leader>2", function()
			harpoon:list():select(2)
		end, "Harpoon File 2")
		map("n", "<leader>3", function()
			harpoon:list():select(3)
		end, "Harpoon File 3")
		map("n", "<leader>4", function()
			harpoon:list():select(4)
		end, "Harpoon File 4")
	end,
}
