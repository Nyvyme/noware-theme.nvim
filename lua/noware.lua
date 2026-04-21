local M = {}

local function set_highlights()
  local palette = require("noware.palette")

  local highlights = {
    Normal = { fg = palette.fg, bg = palette.bg },

    Cursor = { fg = palette.bg, bg = palette.fg },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    TermCursor = { link = "Cursor" },
    CursorColumn = { link = "Cursor" },
    ColorColumn = { bg = palette.bg_d2 },
    CursorLine = { bg = palette.bg_l2 },
    Whitespace = { fg = palette.bg_l6 },
    Visual = { bg = palette.bg_l4 },
    VisualNOS = { link = "Visual" },
    MatchParen = { bg = palette.fg_d9 },
    WinSeparator = { fg = palette.bg_d1, bg = palette.bg_d2 },

    LineNr = { fg = palette.fg_d9, bg = palette.bg },
    CursorLineNr = { fg = palette.fg_d4, bg = palette.bg_l2, bold = true },

    StatusLine = { fg = palette.fg, bg = palette.bg_l6 },
    StatusLineNC = { fg = palette.bg_l8, bg = palette.bg },
    StatusLineTerm = { link = "StatusLine" },
    StatusLineTermNC = { link = "StatusLineNC" },
    ModeMsg = { link = "StatusLine" },
    MsgArea = { link = "StatusLine" },

    PreProc = { fg = palette.fg_d8, bold = true },
    PreCond = { link = "PreProc" },
    Boolean = { fg = palette.fg },
    Character = { fg = palette.orange },
    String = { link = "Character" },
    Define = { link = "PreProc" },
    Number = { fg = palette.red },
    Error = { fg = palette.red, bold = true },
    Special = { fg = palette.fg, bold = true },
    SpecialChar = { fg = palette.red, italic = true },
    Identifier = { fg = palette.fg },
    Type = { fg = palette.fg, bold = true },
    TypeDef = { fg = palette.fg },
    Macro = { link = "PreProc" },
    Include = { link = "PreProc" },
    Label = { fg = palette.fg, bold = true },
    Statement = { fg = palette.skyblue },
    Keyword = { fg = palette.skyblue },
    Function = { fg = palette.fg },
    Operator = { fg = palette.fg },
    Comment = { fg = palette.fg_d6, italic = true },
    Structure = { fg = palette.fg },
    Repeat = { fg = palette.skyblue },
    Conditional = { fg = palette.skyblue },
    Float = { link = "Number" },
  }

  for group, highlight in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

function M.colorscheme(variant)
  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "noware"
  vim.o.background = "dark"
  set_highlights()
end

function M.setup(options)
end

return M
