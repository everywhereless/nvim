-- 🌙 Tokyo Night Storm Colors (change these if you ever tweak the theme)
local colors = {
  bg        = '#24283b',  -- Main background
  border    = '#292e42',  -- Window borders
  fg        = '#a9b1d6',  -- Main text
  comment   = '#565f89',  -- Dimmed/deprecated text
  selection = '#3b4261',  -- Highlighted/selected row

  -- Accent colors (used for kind icons & active params)
  blue      = '#7aa2f7',
  cyan      = '#73daca',
  green     = '#9ece6a',
  magenta   = '#bb9af7',
  red       = '#f7768e',
  yellow    = '#e0af68',
}

local set_hl = vim.api.nvim_set_hl

-- 📋 Completion Menu
set_hl(0, 'BlinkCmpMenu',               { bg = colors.bg,        fg = colors.fg })
set_hl(0, 'BlinkCmpMenuBorder',         { bg = colors.bg,        fg = colors.border })
set_hl(0, 'BlinkCmpMenuSelection',      { bg = colors.selection, fg = colors.fg })

-- 🏷 Labels & Details
set_hl(0, 'BlinkCmpLabel',              { fg = colors.fg })
set_hl(0, 'BlinkCmpLabelDeprecated',    { fg = colors.comment,   strikethrough = true })
set_hl(0, 'BlinkCmpLabelDetail',        { fg = colors.comment })
set_hl(0, 'BlinkCmpLabelDescription',   { fg = colors.comment })

-- 🎨 Kind Icons (color-coded by type)
set_hl(0, 'BlinkCmpKind',               { fg = colors.blue })
set_hl(0, 'BlinkCmpKindFunction',       { fg = colors.blue })
set_hl(0, 'BlinkCmpKindMethod',         { fg = colors.blue })
set_hl(0, 'BlinkCmpKindVariable',       { fg = colors.cyan })
set_hl(0, 'BlinkCmpKindField',          { fg = colors.cyan })
set_hl(0, 'BlinkCmpKindClass',          { fg = colors.yellow })
set_hl(0, 'BlinkCmpKindKeyword',        { fg = colors.magenta })
set_hl(0, 'BlinkCmpKindSnippet',        { fg = colors.green })
set_hl(0, 'BlinkCmpKindFile',           { fg = colors.red })
set_hl(0, 'BlinkCmpKindFolder',         { fg = colors.blue })

-- 📜 Extras & Popups
set_hl(0, 'BlinkCmpSource',             { fg = colors.comment })
set_hl(0, 'BlinkCmpScrollBarThumb',     { bg = colors.selection })
set_hl(0, 'BlinkCmpScrollBarGutter',    { bg = colors.bg })
set_hl(0, 'BlinkCmpGhostText',          { fg = colors.comment })
set_hl(0, 'BlinkCmpDoc',                { bg = colors.bg,        fg = colors.fg })
set_hl(0, 'BlinkCmpDocBorder',          { bg = colors.bg,        fg = colors.border })
set_hl(0, 'BlinkCmpSignatureHelp',      { bg = colors.bg,        fg = colors.fg })
set_hl(0, 'BlinkCmpSignatureHelpActiveParameter', { fg = colors.yellow, bold = true })
