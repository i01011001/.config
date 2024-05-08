local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("config.options")
require("config.keymaps")

require("lazy").setup({
	ui = {
		border = "single",
		scrollbar = false,
		winhighlight = "Normal:None,FloatBorder:None",
	},
	spec = {
		{ import = "plugins" },
		{ import = "plugins/lsp" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	install = { colorscheme = { "no-clown-fiesta" } },
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
