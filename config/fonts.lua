--local wezterm = require('wezterm')
--local platform = require('utils.platform')
--
---- local font = 'Maple Mono SC NF'
----local font_family = 'JetBrains Mono'
--local font_family = 'JetBrainsMono Nerd Font'
---- 中文字体
--local font_size = 14
--return {
--   font = wezterm.font({
--      family = font_family,
--      weight = 'Regular',
--   }),
--   font_size = font_size,
--
--   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
--   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
--   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
--}
local wezterm = require('wezterm')

local font_family = 'JetBrainsMono Nerd Font'
local chinese_font = 'Noto Sans CJK SC' -- 替换为你喜欢的中文字体
local font_size = 14

return {
   font = wezterm.font_with_fallback({
      { family = font_family, weight = 'Regular' }, -- 英文字体及其粗细
      { family = chinese_font, weight = 'Regular' }, -- 中文字体及其粗细
   }),
   font_size = font_size,

   freetype_load_target = 'Normal',
   freetype_render_target = 'Normal',
}
