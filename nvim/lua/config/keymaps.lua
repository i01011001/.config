-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
-- wilder.set_option('renderer', wilder.popupmenu_renderer(
--   wilder.popupmenu_border_theme({
--     highlights = {
--       border = 'Normal', -- highlight to use for the border
--       winhighlight = "Normal:None,FloatBorder:None,Bg:None",
--     },
--     border = 'single',
--     -- pumblend = 100,
--   })
-- ))
wilder.set_option('renderer', wilder.wildmenu_renderer({
  highlighter = wilder.basic_highlighter(),
  separator = ' · ',
  left = {' ', wilder.wildmenu_spinner(), ' '},
  right = {' ', wilder.wildmenu_index()},
}))

