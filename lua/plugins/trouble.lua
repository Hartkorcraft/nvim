return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		vim.keymap.set("n", "<leader>xx", function()
			require("trouble").toggle()
		end),
		vim.keymap.set("n", "<leader>xw", function()
			require("trouble").toggle("workspace_diagnostics")
		end),
		vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>"),
		vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>"),
	},
	config = function()
		local actions = require("telescope.actions")
		local trouble = require("trouble.providers.telescope")

		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				mappings = {
					i = { ["<c-t>"] = trouble.open_with_trouble },
					n = { ["<leader>XX"] = trouble.open_with_trouble },
				},
			},
		})
	end,
}
