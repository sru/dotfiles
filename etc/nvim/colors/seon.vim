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

set background=light

let s:cterm = {}
let s:cterm.black          = '0'
let s:cterm.red            = '1'
let s:cterm.green          = '2'
let s:cterm.yellow         = '3'
let s:cterm.blue           = '4'
let s:cterm.magenta        = '5'
let s:cterm.cyan           = '6'
let s:cterm.white          = '7'
let s:cterm.bright_black   = '8'
let s:cterm.bright_red     = '9'
let s:cterm.bright_green   = '10'
let s:cterm.bright_yellow  = '11'
let s:cterm.bright_blue    = '12'
let s:cterm.bright_magenta = '13'
let s:cterm.bright_cyan    = '14'
let s:cterm.bright_white   = '15'
let s:cterm.fg             = 'NONE'
let s:cterm.bg             = 'NONE'
let s:cterm.none           = 'NONE'

let s:gui = {}
let s:gui.black          = '#000000'
let s:gui.red            = '#ce2029'
let s:gui.green          = '#007d32'
let s:gui.yellow         = '#ab9100'
let s:gui.blue           = '#1c39bb'
let s:gui.magenta        = '#663399'
let s:gui.cyan           = '#ff7900'
let s:gui.white          = '#555555'
let s:gui.bright_black   = '#ababab'
let s:gui.bright_red     = '#efb5b8'
let s:gui.bright_green   = '#abd4bb'
let s:gui.bright_yellow  = '#ffd800'
let s:gui.bright_blue    = '#b4bee9'
let s:gui.bright_magenta = '#cdbcdd'
let s:gui.bright_cyan    = '#ffd3ab'
let s:gui.bright_white   = '#ffffff'
let s:gui.fg             = '#000000'
let s:gui.bg             = '#ffffff'
let s:gui.none           = 'NONE'

function! s:highlight(group, fg, bg, style, sp = 'none') abort
  let l:cmd = 'highlight ' . a:group .
    \ ' ctermfg=' . s:cterm[a:fg] . ' guifg=' . s:gui[a:fg] .
    \ ' ctermbg=' . s:cterm[a:bg] . ' guibg=' . s:gui[a:bg] .
    \ ' cterm=' . a:style . ' gui=' . a:style
  if a:sp != 'NONE'
    let l:cmd = l:cmd . ' guisp=' . s:gui[a:sp]
  endif
  execute l:cmd
endfunction

" Builtin highlight groups (See `:help highlight-default`)
call s:highlight('ColorColumn', 'none', 'bright_red', 'NONE')
call s:highlight('Conceal', 'none', 'none', 'NONE')
call s:highlight('CurSearch', 'none', 'bright_yellow', 'NONE')
call s:highlight('Cursor', 'none', 'none', 'reverse')
call s:highlight('lCursor', 'none', 'none', 'reverse')
call s:highlight('CursorIM', 'none', 'none', 'reverse')
call s:highlight('CursorColumn', 'none', 'bright_black', 'NONE')
call s:highlight('CursorLine', 'none', 'bright_black', 'NONE')
call s:highlight('Directory', 'none', 'none', 'NONE')
call s:highlight('DiffAdd', 'green', 'none', 'NONE')
call s:highlight('DiffChange', 'blue', 'none', 'NONE')
call s:highlight('DiffDelete', 'red', 'none', 'NONE')
call s:highlight('DiffText', 'blue', 'bright_blue', 'NONE')
call s:highlight('EndOfBuffer', 'bright_black', 'none', 'NONE')
call s:highlight('TermCursor', 'none', 'none', 'reverse')
call s:highlight('TermCursorNC', 'none', 'none', 'reverse')
call s:highlight('ErrorMsg', 'red', 'none', 'NONE')
call s:highlight('WinSeparator', 'bright_black', 'none', 'NONE')
call s:highlight('Folded', 'bright_black', 'none', 'NONE')
call s:highlight('FoldColumn', 'bright_black', 'none', 'NONE')
call s:highlight('SignColumn', 'none', 'bright_black', 'NONE')
call s:highlight('IncSearch', 'none', 'bright_yellow', 'NONE')
call s:highlight('Substitute', 'none', 'bright_yellow', 'NONE')
call s:highlight('LineNr', 'bright_black', 'none', 'NONE')
call s:highlight('LineNrAbove', 'bright_black', 'none', 'NONE')
call s:highlight('LineNrBelow', 'bright_black', 'none', 'NONE')
call s:highlight('CursorLineNr', 'yellow', 'none', 'NONE')
call s:highlight('CursorLineFold', 'yellow', 'none', 'NONE')
call s:highlight('CursorLineSign', 'yellow', 'none', 'NONE')
call s:highlight('MatchParen', 'none', 'bright_black', 'NONE')
call s:highlight('ModeMsg', 'none', 'none', 'NONE')
call s:highlight('MsgArea', 'none', 'none', 'NONE')
call s:highlight('MsgSeparator', 'bright_black', 'none', 'NONE')
call s:highlight('MoreMsg', 'none', 'none', 'NONE')
call s:highlight('NonText', 'bright_black', 'none', 'NONE')
call s:highlight('Normal', 'fg', 'bg', 'NONE')
call s:highlight('NormalFloat', 'fg', 'bg', 'NONE')
call s:highlight('FloatBorder', 'bright_black', 'none', 'NONE')
call s:highlight('FloatTitle', 'none', 'none', 'NONE')
call s:highlight('FloatFooter', 'none', 'none', 'NONE')
call s:highlight('NormalNC', 'none', 'none', 'NONE')
call s:highlight('Pmenu', 'white', 'bright_black', 'NONE')
call s:highlight('PmenuSel', 'none', 'bright_black', 'NONE')
call s:highlight('PmenuKind', 'white', 'bright_black', 'NONE')
call s:highlight('PmenuKindSel', 'none', 'bright_black', 'NONE')
call s:highlight('PmenuExtra', 'white', 'bright_black', 'NONE')
call s:highlight('PmenuExtraSel', 'none', 'bright_black', 'NONE')
call s:highlight('PmenuSbar', 'none', 'bright_black', 'NONE')
call s:highlight('PmenuThumb', 'none', 'white', 'NONE')
call s:highlight('PmenuMatch', 'white', 'bright_black', 'bold')
call s:highlight('PmenuMatchSel', 'none', 'bright_black', 'bold')
call s:highlight('Question', 'none', 'none', 'NONE')
call s:highlight('QuickFixLine', 'none', 'none', 'bold')
call s:highlight('Search', 'none', 'bright_yellow', 'NONE')
call s:highlight('SnippetTabstop', 'none', 'none', 'NONE')
call s:highlight('SpecialKey', 'bright_black', 'none', 'NONE')
call s:highlight('SpellBad', 'none', 'none', 'undercurl', 'red')
call s:highlight('SpellCap', 'none', 'none', 'undercurl', 'yellow')
call s:highlight('SpellLocal', 'none', 'none', 'undercurl', 'yellow')
call s:highlight('SpellRare', 'none', 'none', 'undercurl', 'yellow')
call s:highlight('StatusLine', 'bright_black', 'none', 'NONE')
" StatusLineNC must be different from StatusLine to remove carets (^).
call s:highlight('StatusLineNC', 'bright_white', 'none', 'NONE')
call s:highlight('StatusLineTerm', 'bright_black', 'none', 'NONE')
call s:highlight('StatusLineTermNC', 'bright_white', 'none', 'NONE')
call s:highlight('TabLine', 'bright_black', 'none', 'NONE')
call s:highlight('TabLineFill', 'bright_black', 'none', 'NONE')
call s:highlight('TabLineSel', 'none', 'none', 'NONE')
call s:highlight('Title', 'none', 'none', 'NONE')
call s:highlight('Visual', 'none', 'bright_black', 'NONE')
call s:highlight('VisualNOS', 'none', 'none', 'NONE')
call s:highlight('WarningMsg', 'yellow', 'none', 'NONE')
call s:highlight('Whitespace', 'bright_black', 'none', 'NONE')
call s:highlight('Wildmenu', 'none', 'bright_yellow', 'NONE')
call s:highlight('WinBar', 'none', 'none', 'NONE')
call s:highlight('WinBarNC', 'bright_black', 'none', 'NONE')

" GUI related highlights.
call s:highlight('Menu', 'none', 'none', 'NONE')
call s:highlight('Scrollbar', 'none', 'none', 'NONE')
call s:highlight('Tooltip', 'none', 'none', 'NONE')

" Syntax related highlights (See `:help group-name`).
call s:highlight('Comment', 'none', 'none', 'italic')

call s:highlight('Constant', 'none', 'none', 'NONE')
call s:highlight('String', 'none', 'none', 'NONE')
call s:highlight('Character', 'none', 'none', 'NONE')
call s:highlight('Number', 'none', 'none', 'NONE')
call s:highlight('Boolean', 'none', 'none', 'NONE')
call s:highlight('Float', 'none', 'none', 'NONE')

call s:highlight('Identifier', 'none', 'none', 'NONE')
call s:highlight('Function', 'none', 'none', 'NONE')

call s:highlight('Statement', 'none', 'none', 'NONE')
call s:highlight('Conditional', 'none', 'none', 'NONE')
call s:highlight('Repeat', 'none', 'none', 'NONE')
call s:highlight('Label', 'none', 'none', 'NONE')
call s:highlight('Operator', 'none', 'none', 'NONE')
call s:highlight('Keyword', 'none', 'none', 'NONE')
call s:highlight('Exception', 'none', 'none', 'NONE')

call s:highlight('PreProc', 'none', 'none', 'NONE')
call s:highlight('Include', 'none', 'none', 'NONE')
call s:highlight('Define', 'none', 'none', 'NONE')
call s:highlight('Macro', 'none', 'none', 'NONE')
call s:highlight('PreCondit', 'none', 'none', 'NONE')

call s:highlight('Type', 'none', 'none', 'NONE')
call s:highlight('StorageClass', 'none', 'none', 'NONE')
call s:highlight('Structure', 'none', 'none', 'NONE')
call s:highlight('Typedef', 'none', 'none', 'NONE')

call s:highlight('Special', 'none', 'none', 'NONE')
call s:highlight('SpecialChar', 'none', 'none', 'NONE')
call s:highlight('Tag', 'none', 'none', 'NONE')
call s:highlight('Delimiter', 'none', 'none', 'NONE')
call s:highlight('SpecialComment', 'none', 'none', 'NONE')
call s:highlight('Debug', 'none', 'none', 'NONE')

call s:highlight('Underlined', 'none', 'none', 'underline')

call s:highlight('Ignore', 'none', 'none', 'NONE')

call s:highlight('Error', 'red', 'none', 'NONE')

call s:highlight('Todo', 'yellow', 'none', 'NONE')

call s:highlight('Added', 'green', 'none', 'NONE')
call s:highlight('Changed', 'blue', 'none', 'NONE')
call s:highlight('Removed', 'red', 'none', 'NONE')

" Specific to vim help files.
call s:highlight('helpHyperTextJump', 'magenta', 'none', 'NONE')
call s:highlight('helpOption', 'blue', 'none', 'NONE')

delfunction s:highlight
unlet s:cterm
unlet s:gui
