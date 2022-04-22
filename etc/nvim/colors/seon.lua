vim.cmd('highlight clear')

if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'seon'

local cterm = {
  black = 0,
  red = 1,
  green = 2,
  yellow = 3,
  blue = 4,
  magenta = 5,
  cyan = 6,
  white = 7,
  bright_black = 8,
  bright_red = 9,
  bright_green = 10,
  bright_yellow = 11,
  bright_blue = 12,
  bright_magenta = 13,
  bright_cyan = 14,
  bright_white = 15,
  none = 'NONE',
}

local gui = {
  black = '#000000',
  red = '#ce2029',
  green = '#007d32',
  yellow = '#ab9100',
  blue = '#1c39bb',
  magenta = '#663399',
  cyan = '#ff7900',
  white = '#555555',
  bright_black = '#ababab',
  bright_red = '#efb5b8',
  bright_green = '#abd4bb',
  bright_yellow = '#ffd800',
  bright_blue = '#b4bee9',
  bright_magenta = '#cdbcdd',
  bright_cyan = '#ffd3ab',
  bright_white = '#ffffff',
  none = 'NONE',
}

vim.api.nvim_set_hl(0, 'Normal', { fg = gui.black, bg = gui.bright_white })

vim.api.nvim_set_hl(0, 'Conceal', {})
vim.api.nvim_set_hl(0, 'Directory', {})
vim.api.nvim_set_hl(0, 'Function', {})
vim.api.nvim_set_hl(0, 'Identifier', {})
vim.api.nvim_set_hl(0, 'Ignore', {})
vim.api.nvim_set_hl(0, 'Menu', {})
vim.api.nvim_set_hl(0, 'ModeMsg', {})
vim.api.nvim_set_hl(0, 'MoreMsg', {})
vim.api.nvim_set_hl(0, 'PreProc', {})
vim.api.nvim_set_hl(0, 'Question', {})
vim.api.nvim_set_hl(0, 'Special', {})
vim.api.nvim_set_hl(0, 'TabLine', {})
vim.api.nvim_set_hl(0, 'Title', {})
vim.api.nvim_set_hl(0, 'Tooltip', {})
vim.api.nvim_set_hl(0, 'Type', {})
vim.api.nvim_set_hl(0, 'Underlined', {})
vim.api.nvim_set_hl(0, 'Scrollbar', {})
vim.api.nvim_set_hl(0, 'Statement', {})
vim.api.nvim_set_hl(0, 'VisualNOS', {})

vim.api.nvim_set_hl(0, 'FoldColumn', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'Folded', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'NonText', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'SpecialKey', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'StatusLine', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'StatusLineNC', { ctermfg = cterm.bright_black, fg = gui.bright_black })
vim.api.nvim_set_hl(0, 'VertSplit', { ctermfg = cterm.bright_black, fg = gui.bright_black })

vim.api.nvim_set_hl(0, 'Comment', { ctermfg = cterm.green, fg = gui.green })

vim.api.nvim_set_hl(0, 'Constant', { ctermfg = cterm.blue, fg = gui.blue })

vim.api.nvim_set_hl(0, 'Cursor', { ctermfg = cterm.bright_white, fg = gui.bright_white, ctermbg = cterm.black, bg = black })
vim.api.nvim_set_hl(0, 'CursorIM', { ctermfg = cterm.bright_white, fg = gui.bright_white, ctermbg = cterm.black, bg = black })

vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = cterm.bright_red, bg = gui.bright_red })

vim.api.nvim_set_hl(0, 'CursorColumn', { ctermbg = cterm.bright_black, bg = gui.bright_black })
vim.api.nvim_set_hl(0, 'CursorLine', { ctermbg = cterm.bright_black, bg = gui.bright_black })
vim.api.nvim_set_hl(0, 'MatchParen', { ctermbg = cterm.bright_black, bg = gui.bright_black })
vim.api.nvim_set_hl(0, 'SignColumn', { ctermbg = cterm.bright_black, bg = gui.bright_black })
vim.api.nvim_set_hl(0, 'Visual', { ctermbg = cterm.bright_black, bg = gui.bright_black })

vim.api.nvim_set_hl(0, 'Error', { ctermfg = cterm.red, fg = gui.red })
vim.api.nvim_set_hl(0, 'ErrorMsg', { ctermfg = cterm.red, fg = gui.red })
vim.api.nvim_set_hl(0, 'WarningMsg', { ctermfg = cterm.yellow, fg = gui.yellow })

vim.api.nvim_set_hl(0, 'Todo', { ctermfg = cterm.yellow, fg = gui.yellow })

vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg = cterm.yellow, fg = gui.yellow })

vim.api.nvim_set_hl(0, 'Search', { ctermbg = cterm.bright_yellow, bg = gui.bright_yellow })
vim.api.nvim_set_hl(0, 'IncSearch', { ctermbg = cterm.bright_yellow, bg = gui.bright_yellow })
vim.api.nvim_set_hl(0, 'Wildmenu', { ctermbg = cterm.bright_yellow, bg = gui.bright_yellow })

vim.api.nvim_set_hl(0, 'DiffAdd', { ctermfg = cterm.green, fg = gui.green })
vim.api.nvim_set_hl(0, 'DiffChange', { ctermfg = cterm.blue, fg = gui.blue })
vim.api.nvim_set_hl(0, 'DiffDelete', { ctermfg = cterm.red, fg = gui.red })
vim.api.nvim_set_hl(0, 'DiffText', { ctermfg = cterm.magenta, fg = gui.magenta })

vim.api.nvim_set_hl(0, 'SpellBad', { underline = true })
vim.api.nvim_set_hl(0, 'SpellCap', { underline = true })
vim.api.nvim_set_hl(0, 'SpellLocal', {})
vim.api.nvim_set_hl(0, 'SpellRare', {})

vim.api.nvim_set_hl(0, 'Pmenu', { ctermfg = cterm.bright_white, fg = gui.bright_white, ctermbg = cterm.white, bg = gui.white })
vim.api.nvim_set_hl(0, 'PmenuSel', {})
vim.api.nvim_set_hl(0, 'PmenuSbar', { ctermbg = cterm.white, bg = gui.white })
vim.api.nvim_set_hl(0, 'PmenuThumb', { ctermfg = cterm.white, fg = gui.white })

-- Specific to vim help files.
vim.api.nvim_set_hl(0, 'helpHyperTextJump', { ctermfg = cterm.magenta, fg = gui.magenta })
vim.api.nvim_set_hl(0, 'helpOption', { ctermfg = cterm.blue, fg = gui.blue })
