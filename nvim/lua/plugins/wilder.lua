return {
	"gelguy/wilder.nvim",
	ui = {
		winhighlight = "Normal:None,FloatBorder:None,Bg:None",
	},
	init = function()
		local wilder = require("wilder")
		wilder.setup({ modes = { ":", "/", "?" } })
		wilder.set_option(
			"renderer",
			wilder.wildmenu_renderer({
				highlighter = wilder.basic_highlighter(),
				separator = " · ",
				left = { " ", wilder.wildmenu_spinner(), " " },
				right = { " ", wilder.wildmenu_index() },
			})
		)
	end,
}
