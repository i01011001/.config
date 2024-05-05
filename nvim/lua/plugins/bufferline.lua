return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	init = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				show_buffer_icons = false, -- disable filetype icons for buffers
				show_buffer_close_icons = false,
				show_close_icon = false,
				show_tab_indicators = false,
				show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
				always_show_bufferline = false,
				separator_style = { "", "" },
				indicator = {
					style = "none",
				},
			},
		})
	end,
}
