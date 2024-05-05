return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	init = function()
		require("neo-tree").setup({
			popup_border_style = "single",
			use_popups_for_input = false,
			-- add_blank_line_at_top = true,
			window = {
				position = "float",
				popup = { -- settings that apply to float position only
					size = {
						height = "80%",
						width = "60%",
					},
					position = "50%", -- 50% means center it
				},
			},
		})
	end,
}
