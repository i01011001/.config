return {
	{
		"/EdenEast/nightfox.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			require("nightfox").setup({
				options = {
					colorblind = {
						enable = true,
						-- simulate_only = true,
						severity = {
							-- protan = 1,
							--       deutan = 1,
							-- tritan = 1,
						},
					},
				},
				-- transparent = true, -- Disable setting background
				-- day_brightness = 1,
				palettes = {
					-- Custom duskfox with black background
					nordfox = {
						pink = { base = "#5c708b", bright = "#5d7fa6", dim = "#556a85" },
						magenta = { base = "#648b7d", bright = "#65a68c", dim = "#5c7d75" },
						red = { base = "#c1797f", bright = "#d18b95", dim = "#aa666e" },
						comment = "#606469",
						bg1 = "#000000", -- Black background
						bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
						bg2 = "#39404f", -- Lighter bg (colorcolm folds)
						bg3 = "#121820", -- 55% darkened from stock
						bg4 = "#5a657d", -- Conceal, border fg

						fg0 = "#c7cdd9", -- Lighter fg
						fg1 = "#cdcecf", -- Default fg
						fg2 = "#abb1bb", -- Darker fg (status line)
						fg3 = "#7e8188", -- Darker fg (line numbers, fold colums)

						sel0 = "#212528", -- 55% darkened from stock
						sel1 = "#686b70", -- Popup sel bg, search bg
					},
				},
			})
			vim.cmd("colorscheme no-clown-fiesta")
		end,
	},
	{
		"aktersnurra/no-clown-fiesta.nvim",
		config = function()
			require("no-clown-fiesta").setup({
				transparent = false, -- Enable this to disable the bg color
				styles = {
					-- You can set any of the style values specified for `:h nvim_set_hl`
					comments = {},
					functions = {},
					keywords = {},
					lsp = { underline = false },
					match_paren = {},
					type = { bold = true },
					variables = {},
				},
			})
		end,
		opts = {},
	},
}
