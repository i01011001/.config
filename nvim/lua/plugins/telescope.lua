return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
					},
				},
			},
			pickers = {
				find_files = {
					--theme = "dropdown",
					previewer = false,
					hidden = true,
				},
				live_grep = {
					--theme = "dropdown",
					previewer = false,
				},
				find_buffers = {
					--theme = "dropdown",
					previewer = false,
				},
			},
		})
	end,
}
