-- Credits to https://github.com/Mike-18awq/dotfiles/blob/main/config/wal/templates/NvchadWal.lua

local M = {{}}

M.base_30 = {{
  white = "{color15}",
  darker_black = "{color0}",
  black = "{color0}", --  nvim bg
  black2 = "{color8}",
  one_bg = "{color8}", -- real bg of onedark
  one_bg2 = "{color8}",
  one_bg3 = "{color8}",
  grey = "{color8}",
  grey_fg = "{color8}",
  grey_fg2 = "{color7}",
  light_grey = "{color0}",
  red = "{color1}",--color principal
  baby_pink = "{color13}",
  pink = "{color5}",
  line = "{color8}", -- for lines like vertsplit
  green = "{color1}",--color principal
  vibrant_green = "{color10}",
  nord_blue = "{color1}",
  blue = "{color12}",
  yellow = "{color3}",
  sun = "{color11}",
  purple = "{color5}",
  dark_purple = "{color13}",
  teal = "{color12}",
  orange = "{color11}",
  cyan = "{color6}",
  statusline_bg = "{color8}",
  lightbg = "{color8}", -- statusbar
  pmenu_bg = "{color8}", -- statusbar
  folder_bg = "{color8}", -- statusbar
}}

M.base_16 = {{
  base00 = "{color0}",
  base01 = "{color8}",
  base02 = "{color1}",--coor principal
  base03 = "{color9}",--color principal
  base04 = "{color7}",
  base05 = "{color15}",
  base06 = "{color3}",
  base07 = "{color11}",
  base08 = "{color1}",--color principal
  base09 = "{color9}",--color principal
  base0A = "{color5}",
  base0B = "{color13}",
  base0C = "{color3}",
  base0D = "{color9}",--color principal
  base0E = "{color4}",
  base0F = "{color15}", -- [] and ,
}}

M.polish_hl = {{
  ["@function.builtin"] = {{ fg = M.base_30.cyan }},
  ["@number"] = {{ fg = M.base_30.purple }},
}}

M.type = "dark"

M = require("base46").override_theme(M, "pywal")

return M
