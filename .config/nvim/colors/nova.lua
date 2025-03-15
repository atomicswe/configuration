-- Nova Theme: A modern, sophisticated dark theme for Neovim
-- Clear existing highlights to start fresh
vim.cmd("highlight clear")

-- Name your colorscheme
vim.g.colors_name = "nova"

-- Set the background type
vim.o.background = "dark"

-- Define a sophisticated color palette
local colors = {
  -- Base colors
  bg        = "#161616", -- Rich dark background with slight blue undertone
  bg_alt    = "#1B1B1B", -- Slightly lighter background for contrast
  bg_float  = "#1e2030", -- Background for floating windows
  fg        = "#c0caf5", -- Soft blue-white foreground for primary text
  fg_alt    = "#a9b1d6", -- Slightly dimmer foreground for secondary elements

  -- UI elements
  border    = "#3b4261", -- Border color for windows
  selection = "#364a82", -- Selection highlight
  comment   = "#565f89", -- Muted blue-gray for comments
  line_nr   = "#3b4261", -- Line numbers
  cursor    = "#73daca", -- Cursor color

  -- Syntax highlighting
  keyword   = "#bb9af7", -- Lavender for keywords
  operator  = "#89ddff", -- Sky blue for operators
  func      = "#7aa2f7", -- Bright blue for functions
  string    = "#9ece6a", -- Soft green for strings
  constant  = "#ff9e64", -- Soft orange for constants
  number    = "#ff9e64", -- Using same soft orange for numbers
  type      = "#2ac3de", -- Cyan for types
  variable  = "#c0caf5", -- Default foreground for variables
  parameter = "#e0af68", -- Gold for parameters

  -- Status and special
  error     = "#f7768e", -- Soft red for errors
  warning   = "#e0af68", -- Gold for warnings
  hint      = "#1abc9c", -- Teal for hints
  info      = "#0db9d7", -- Light blue for info
  added     = "#9ece6a", -- Green for git added
  modified  = "#7aa2f7", -- Blue for git modified
  removed   = "#f7768e", -- Red for git removed
}

-- Editor UI
vim.api.nvim_set_hl(0, "Normal", { bg = colors.bg, fg = colors.fg })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.bg_float, fg = colors.fg })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = colors.bg_float, fg = colors.border })
vim.api.nvim_set_hl(0, "Cursor", { bg = colors.cursor, fg = colors.bg })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_alt })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg_alt })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.line_nr })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.selection })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.selection })
vim.api.nvim_set_hl(0, "Search", { bg = "#3d59a1", fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "IncSearch", { bg = colors.selection, fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { bg = "#344b6f", bold = true })
vim.api.nvim_set_hl(0, "NonText", { fg = "#3b4261" })
vim.api.nvim_set_hl(0, "Folded", { bg = colors.bg_alt, fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.comment })
vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.bg, fg = colors.fg })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.border })
vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.bg_float, fg = colors.fg })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.selection, fg = colors.fg })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_alt })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.selection })
vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.bg_alt, fg = colors.fg })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = colors.bg_alt, fg = colors.comment })
vim.api.nvim_set_hl(0, "TabLine", { bg = colors.bg_alt, fg = colors.comment })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = colors.bg })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = colors.bg, fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "WildMenu", { bg = colors.bg_alt, fg = colors.fg, bold = true })

-- Syntax highlighting
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.constant })
vim.api.nvim_set_hl(0, "String", { fg = colors.string })
vim.api.nvim_set_hl(0, "Character", { fg = colors.string })
vim.api.nvim_set_hl(0, "Number", { fg = colors.number })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.constant, italic = true })
vim.api.nvim_set_hl(0, "Float", { fg = colors.number })
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.variable })
vim.api.nvim_set_hl(0, "Function", { fg = colors.func })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Label", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.operator })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.keyword, bold = true })
vim.api.nvim_set_hl(0, "Exception", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Include", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Define", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Macro", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "PreCondit", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Type", { fg = colors.type })
vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Structure", { fg = colors.type })
vim.api.nvim_set_hl(0, "Typedef", { fg = colors.type })
vim.api.nvim_set_hl(0, "Special", { fg = colors.operator })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.string })
vim.api.nvim_set_hl(0, "Tag", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.fg_alt })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.comment, bold = true })
vim.api.nvim_set_hl(0, "Debug", { fg = colors.warning })
vim.api.nvim_set_hl(0, "Underlined", { fg = colors.info, underline = true })
vim.api.nvim_set_hl(0, "Ignore", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Error", { fg = colors.error, bold = true })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.bg, bg = colors.warning, bold = true })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.error })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.warning })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.info })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.hint })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })

-- Git highlighting
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#2a3834" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#26324a" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#3a2a35" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#26324a", fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.added })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.modified })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.removed })

-- LSP highlights
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#36384a" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#36384a" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#36384a", bold = true })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = colors.parameter, bold = true })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = colors.bg_float, fg = colors.fg })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = colors.bg_float, fg = colors.border })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = colors.bg_alt, fg = colors.border })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = colors.bg_alt, fg = colors.fg })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { bg = colors.bg_alt, fg = colors.keyword })
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.selection, fg = colors.fg })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = colors.bg_float, fg = colors.func, bold = true })

-- NvimTree
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = colors.bg_alt, fg = colors.fg })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = colors.fg_alt })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = colors.func })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = colors.comment })
vim.api.nvim_set_hl(0, "NvimTreeFilename", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", { fg = colors.func, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeImageFile", { fg = colors.fg_alt })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = colors.border })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = colors.modified })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = colors.added })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = colors.removed })

-- Indent blankline
vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3b4261" })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = colors.comment })

-- Notify
vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = colors.error })
vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = colors.warning })
vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = colors.info })
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { fg = colors.comment })
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { fg = colors.hint })
vim.api.nvim_set_hl(0, "NotifyERRORIcon", { fg = colors.error })
vim.api.nvim_set_hl(0, "NotifyWARNIcon", { fg = colors.warning })
vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = colors.info })
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", { fg = colors.comment })
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", { fg = colors.hint })
vim.api.nvim_set_hl(0, "NotifyERRORTitle", { fg = colors.error, bold = true })
vim.api.nvim_set_hl(0, "NotifyWARNTitle", { fg = colors.warning, bold = true })
vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = colors.info, bold = true })
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { fg = colors.comment, bold = true })
vim.api.nvim_set_hl(0, "NotifyTRACETitle", { fg = colors.hint, bold = true })

-- Bufferline
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = colors.cursor })
vim.api.nvim_set_hl(0, "BufferLineFill", { bg = colors.bg })

-- Dashboard
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = colors.func })
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "DashboardShortcut", { fg = colors.warning })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = colors.comment, italic = true })

-- Return the colorscheme for use in other files
return colors
