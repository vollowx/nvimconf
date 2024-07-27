-- Clear hlgroups and set colors_name {{{
vim.cmd.hi('clear')
vim.g.colors_name = 'catppuccin-test'
-- }}}

-- Palette {{{
-- stylua: ignore start
local c_rosewater
local c_flamingo
local c_pink
local c_mauve
local c_red
local c_maroon
local c_peach
local c_yellow
local c_green
local c_teal
local c_sky
local c_sapphire
local c_blue
local c_lavender
local c_text
local c_subtext1
local c_subtext0
local c_overlay2
local c_overlay1
local c_overlay0
local c_surface2
local c_surface1
local c_surface0
local c_base
local c_mantle
local c_crust

if vim.go.bg == 'dark' then
  c_crust = '#11111b'
  c_mantle = '#181825'
  c_base = '#1e1e2e'
  c_surface0 = '#313244'
  c_surface1 = '#45475a'
  c_surface2 = '#585b70'
  c_overlay0 = '#6c7086'
  c_overlay1 = '#7f849c'
  c_overlay2 = '#9399b2'
  c_subtext0 = '#a6adc8'
  c_subtext1 = '#bac2de'
  c_text = '#cdd6f4'
  c_lavender = '#b4befe'
  c_blue = '#89b4fa'
  c_sapphire = '#74c7ec'
  c_sky = '#89dceb'
  c_teal = '#94e2d5'
  c_green = '#a6e3a1'
  c_yellow = '#f9e2af'
  c_peach = '#fab387'
  c_maroon = '#eba0ac'
  c_red = '#f38ba8'
  c_mauve = '#cba6f7'
  c_pink = '#f5c2e7'
  c_flamingo = '#f2cdcd'
  c_rosewater = '#f5e0dc'
else
  c_crust = '#dce0e8'
  c_mantle = '#e6e9ef'
  c_base = '#eff1f5'
  c_surface0 = '#ccd0da'
  c_surface1 = '#bcc0cc'
  c_surface2 = '#acb0be'
  c_overlay0 = '#9ca0b0'
  c_overlay1 = '#8c8fa1'
  c_overlay2 = '#7c7f93'
  c_subtext0 = '#6c6f85'
  c_subtext1 = '#5c5f77'
  c_text = '#4c4f69'
  c_lavender = '#7287fd'
  c_blue = '#1e66f5'
  c_sapphire = '#209fb5'
  c_sky = '#04a5e5'
  c_teal = '#179299'
  c_green = '#40a02b'
  c_yellow = '#df8e1d'
  c_peach = '#fe640b'
  c_maroon = '#e64553'
  c_red = '#d20f39'
  c_mauve = '#8839ef'
  c_pink = '#ea76cb'
  c_flamingo = '#dd7878'
  c_rosewater = '#dc8a78'
end
-- }}}

-- Highlight groups {{{1
local hlgroups = {
  -- UI {{{2
  ColorColumn = { bg = c_surface0 },
  Conceal = { bold = true, fg = c_overlay1 },
  CurSearch = { link = 'IncSearch' },
  Cursor = { bg = c_text, fg = c_base },
  CursorColumn = { link = 'CursorLine' },
  CursorIM = { link = 'Cursor' },
  CursorLine = { bg = c_surface0 },
  CursorLineNr = { fg = c_mauve, bold = true },
  DebugPC = { bg = c_crust },
  DiffAdd = { bg = c_green },
  DiffChange = { bg = c_blue },
  DiffDelete = { fg = c_red },
  DiffText = { bg = c_blue },
  Directory = { fg = c_blue },
  EndOfBuffer = { fg = c_surface1 },
  ErrorMsg = { fg = c_red },
  FloatBorder = { bg = c_mantle, fg = c_subtext0 },
  FloatFooter = { bg = c_mantle, fg = c_surface2 },
  FloatTitle = { bg = c_mantle, fg = c_subtext1, bold = true },
  FoldColumn = { fg = c_overlay0 },
  Folded = { bg = c_surface1, fg = c_overlay0 },
  Ignore = { link = 'NonText' },
  IncSearch = { bg = c_yellow, fg = c_base },
  LineNr = { fg = c_surface1 },
  MatchParen = { bg = c_surface1 },
  ModeMsg = { fg = c_red, bold = true },
  MoreMsg = { fg = c_blue },
  MsgArea = { fg = c_text },
  MsgSeparator = { bg = c_surface1 },
  NonText = { fg = c_overlay0 },
  Normal = { bg = c_base, fg = c_text },
  NormalFloat = { bg = c_mantle, fg = c_text },
  NormalNC = { link = 'Normal' },
  Pmenu = { bg = c_mantle, fg = c_text },
  PmenuSbar = { bg = c_crust },
  PmenuSel = { bg = c_surface0, fg = 'NONE' },
  PmenuThumb = { bg = c_surface0},
  Question = { link = 'MoreMsg' },
  QuickFixLine = { bg = c_surface1 },
  Search = { bg = c_surface2 },
  SignColumn = { fg = c_surface1 },
  SpellBad = { underdashed = true },
  SpellCap = { underdashed = true },
  SpellLocal = { underdashed = true },
  SpellRare = { underdashed = true },
  StatusLine = { bg = c_mantle, fg = c_text },
  StatusLineNC = { bg = c_mantle, fg = c_surface1 },
  Substitute = { bg = c_surface1, fg = c_pink },
  TabLine = { link = 'StatusLineNC' },
  TabLineFill = { link = 'Normal' },
  TabLineSel = { link = 'StatusLine' },
  TermCursor = { fg = c_base, bg = c_red},
  TermCursorNC = { fg = c_base, bg = c_rosewater },
  Title = { bold = true, fg = c_blue },
  Underlined = { fg = c_teal, underline = true },
  VertSplit = { link = 'WinSeparator' },
  Visual = { bg = c_surface1 },
  VisualNOS = { link = 'Visual' },
  WarningMsg = { fg = c_yellow },
  Whitespace = { fg = c_surface1 },
  WildMenu = { link = 'Pmenu' },
  WinBar = { bg = 'NONE', fg = c_rosewater },
  WinBarNC = { link = 'WinBar' },
  WinSeparator = { fg = c_surface2 },
  lCursor = { link = 'Cursor' },
  -- }}}2
}
-- }}}1

-- Set highlight groups {{{1
for hlgroup_name, hlgroup_attr in pairs(hlgroups) do
  vim.api.nvim_set_hl(0, hlgroup_name, hlgroup_attr)
end
-- }}}1
