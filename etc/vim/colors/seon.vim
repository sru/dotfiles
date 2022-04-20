" File: seon.vim
" Author: Sung Rim Huh <sungrimhuh@gmail.com>
" License: MIT
" Description:
" Seon colorscheme.
" The colorscheme only works with 16 colors or 24-bit truecolors.
" There is no dark variant.

highlight clear

if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'seon'

let s:cterm = {}
let s:cterm.black         = '0'
let s:cterm.red           = '1'
let s:cterm.green         = '2'
let s:cterm.yellow        = '3'
let s:cterm.blue          = '4'
let s:cterm.magenta       = '5'
let s:cterm.cyan          = '6'
let s:cterm.white         = '7'
let s:cterm.brightBlack   = '8'
let s:cterm.brightRed     = '9'
let s:cterm.brightGreen   = '10'
let s:cterm.brightYellow  = '11'
let s:cterm.brightBlue    = '12'
let s:cterm.brightMagenta = '13'
let s:cterm.brightCyan    = '14'
let s:cterm.brightWhite   = '15'
let s:cterm.fg            = 'NONE'
let s:cterm.bg            = 'NONE'
let s:cterm.none          = 'NONE'

let s:gui = {}
let s:gui.black         = '#000000'
let s:gui.red           = '#ce2029'
let s:gui.green         = '#007d32'
let s:gui.yellow        = '#ab9100'
let s:gui.blue          = '#1c39bb'
let s:gui.magenta       = '#663399'
let s:gui.cyan          = '#ff7900'
let s:gui.white         = '#555555'
let s:gui.brightBlack   = '#ababab'
let s:gui.brightRed     = '#efb5b8'
let s:gui.brightGreen   = '#abd4bb'
let s:gui.brightYellow  = '#ffd800'
let s:gui.brightBlue    = '#b4bee9'
let s:gui.brightMagenta = '#cdbcdd'
let s:gui.brightCyan    = '#ffd3ab'
let s:gui.brightWhite   = '#ffffff'
let s:gui.fg            = '#000000'
let s:gui.bg            = '#ffffff'
let s:gui.none          = 'NONE'

function! s:highlight(group, fg, bg, style) abort
  execute 'highlight ' . a:group .
        \ ' ctermfg=' . s:cterm[a:fg] . ' guifg=' . s:gui[a:fg] .
        \ ' ctermbg=' . s:cterm[a:bg] . ' guibg=' . s:gui[a:bg] .
        \ ' cterm=' . a:style . ' gui=' . a:style
endfunction

call s:highlight('Normal', 'fg', 'bg', 'NONE')

call s:highlight('Conceal', 'none', 'none', 'NONE')
call s:highlight('Directory', 'none', 'none', 'NONE')
call s:highlight('Function', 'none', 'none', 'NONE')
call s:highlight('Identifier', 'none', 'none', 'NONE')
call s:highlight('Ignore', 'none', 'none', 'NONE')
call s:highlight('Menu', 'none', 'none', 'NONE')
call s:highlight('ModeMsg', 'none', 'none', 'NONE')
call s:highlight('MoreMsg', 'none', 'none', 'NONE')
call s:highlight('PreProc', 'none', 'none', 'NONE')
call s:highlight('Question', 'none', 'none', 'NONE')
call s:highlight('Special', 'none', 'none', 'NONE')
call s:highlight('TabLine', 'none', 'none', 'NONE')
call s:highlight('Title', 'none', 'none', 'NONE')
call s:highlight('Tooltip', 'none', 'none', 'NONE')
call s:highlight('Type', 'none', 'none', 'NONE')
call s:highlight('Underlined', 'none', 'none', 'NONE')
call s:highlight('Scrollbar', 'none', 'none', 'NONE')
call s:highlight('Statement', 'none', 'none', 'NONE')
call s:highlight('VisualNOS', 'none', 'none', 'NONE')

call s:highlight('FoldColumn', 'brightBlack', 'none', 'NONE')
call s:highlight('Folded', 'brightBlack', 'none', 'NONE')
call s:highlight('LineNr', 'brightBlack', 'none', 'NONE')
call s:highlight('NonText', 'brightBlack', 'none', 'NONE')
call s:highlight('SpecialKey', 'brightBlack', 'none', 'NONE')
call s:highlight('StatusLine', 'brightBlack', 'none', 'NONE')
call s:highlight('StatusLineNC', 'brightBlack', 'none', 'NONE')
call s:highlight('VertSplit', 'brightBlack', 'none', 'NONE')

call s:highlight('SignColumn', 'none', 'brightBlack', 'NONE')

call s:highlight('Comment', 'green', 'none', 'NONE')

call s:highlight('Constant', 'blue', 'none', 'NONE')

call s:highlight('Cursor', 'none', 'none', 'reverse')
call s:highlight('CursorIM', 'none', 'none', 'reverse')

call s:highlight('ColorColumn', 'none', 'brightRed', 'NONE')

call s:highlight('CursorColumn', 'none', 'brightBlack', 'NONE')
call s:highlight('CursorLine', 'none', 'brightBlack', 'NONE')
call s:highlight('MatchParen', 'none', 'brightBlack', 'NONE')
call s:highlight('Visual', 'none', 'brightBlack', 'NONE')

call s:highlight('Error', 'red', 'none', 'NONE')
call s:highlight('ErrorMsg', 'red', 'none', 'NONE')
call s:highlight('WarningMsg', 'yellow', 'none', 'NONE')

call s:highlight('Todo', 'yellow', 'none', 'NONE')

call s:highlight('CursorLineNr', 'yellow', 'none', 'NONE')

call s:highlight('Search', 'none', 'brightYellow', 'NONE')
call s:highlight('IncSearch', 'none', 'brightYellow', 'NONE')
call s:highlight('Wildmenu', 'none', 'brightYellow', 'NONE')

call s:highlight('DiffAdd', 'green', 'none', 'NONE')
call s:highlight('DiffChange', 'blue', 'none', 'NONE')
call s:highlight('DiffDelete', 'red', 'none', 'NONE')
call s:highlight('DiffText', 'blue', 'brightBlue', 'NONE')

call s:highlight('SpellBad', 'red', 'none', 'underline')
call s:highlight('SpellCap', 'blue', 'none', 'underline')
call s:highlight('SpellLocal', 'magenta', 'none', 'underline')
call s:highlight('SpellRare', 'magenta', 'none', 'underline')

call s:highlight('Pmenu', 'white', 'none', 'reverse')
call s:highlight('PmenuSel', 'none', 'none', 'NONE')
call s:highlight('PmenuSbar', 'none', 'white', 'NONE')
call s:highlight('PmenuThumb', 'white', 'none', 'NONE')

" Specific to vim help files.
call s:highlight('helpHyperTextJump', 'magenta', 'none', 'NONE')
call s:highlight('helpOption', 'blue', 'none', 'NONE')

delfunction s:highlight
unlet s:cterm
unlet s:gui
