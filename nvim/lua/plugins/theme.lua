return {
	{
		"/i01011001/no-clown",
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
			vim.cmd("colorscheme no-clown-fiesta")
		end,
		opts = {},
	},
	{
		"/kvrohit/rasmus.nvim",
	},
}
