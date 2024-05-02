-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('renderer', wilder.wildmenu_renderer({
  highlighter = wilder.basic_highlighter(),
  separator = ' · ',
  left = {' ', wilder.wildmenu_spinner(), ' '},
  right = {' ', wilder.wildmenu_index()},
}))

require("neo-tree").setup({
  popup_border_style = "single",
  use_popups_for_input = false,
  -- add_blank_line_at_top = true,
  window = {
    position = "float",
    popup = { -- settings that apply to float position only
      -- size = {
      --   height = "80%",
      --   width = "50%",
      -- },
      position = "50%", -- 50% means center it
    },
  },
})

local bufferline = require('bufferline')
bufferline.setup {
  options = {
    show_buffer_icons = false, -- disable filetype icons for buffers
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,
    show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
    always_show_bufferline = false,
    separator_style = {'',''},
    indicator = {
      style = 'none',
    }
  }
}
