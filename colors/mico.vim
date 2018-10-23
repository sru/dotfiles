" File: mico.vim
" Author: Sung Rim Huh <sungrimhuh@gmail.com>
" License: MIT
" Description:
" MIninmal COlorscheme. The color palettes are from hybrid color scheme, which
" takes the palette from tomorrow-night, which is superseded by base16.

highlight clear

if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mico'

let s:cterm = {}
let s:gui = {}

if get(g:, 'mico_use_term_colors') || $TERM !~ '256' && &t_Co < 256
  let s:cterm.red     = '1'
  let s:cterm.green   = '2'
  let s:cterm.yellow  = '3'
  let s:cterm.blue    = '4'
  let s:cterm.magenta = '5'
  let s:cterm.gray    = '8'
else
  let s:cterm.red     = '131'
  let s:cterm.green   = '143'
  let s:cterm.yellow  = '222'
  let s:cterm.blue    = '109'
  let s:cterm.magenta = '139'
  let s:cterm.gray    = '243'
endif

let s:cterm.none = 'NONE'

let s:gui.red     = '#b85a5a'
let s:gui.green   = '#9ca450'
let s:gui.yellow  = '#f0c674'
let s:gui.blue    = '#81a2be'
let s:gui.magenta = '#b294bb'
let s:gui.gray    = '#767676'

let s:gui.none = 'NONE'

function! s:highlight(group, fg, bg, style) abort
  execute 'highlight ' . a:group .
        \ ' ctermfg=' . s:cterm[a:fg] . ' guifg=' . s:gui[a:fg] .
        \ ' ctermbg=' . s:cterm[a:bg] . ' guibg=' . s:gui[a:bg] .
        \ ' cterm=' . a:style . ' gui=' . a:style
endfunction

call s:highlight('Normal', 'none', 'none', 'NONE')

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

call s:highlight('FoldColumn', 'gray', 'none', 'NONE')
call s:highlight('Folded', 'gray', 'none', 'NONE')
call s:highlight('LineNr', 'gray', 'none', 'NONE')
call s:highlight('NonText', 'gray', 'none', 'NONE')
call s:highlight('SpecialKey', 'gray', 'none', 'NONE')
call s:highlight('StatusLine', 'gray', 'none', 'NONE')
call s:highlight('StatusLineNC', 'gray', 'none', 'NONE')
call s:highlight('VertSplit', 'gray', 'none', 'NONE')

call s:highlight('SignColumn', 'none', 'gray', 'NONE')

call s:highlight('Comment', 'green', 'none', 'NONE')

call s:highlight('Constant', 'red', 'none', 'NONE')

call s:highlight('Cursor', 'none', 'none', 'reverse')
call s:highlight('CursorIM', 'none', 'none', 'reverse')

call s:highlight('ColorColumn', 'none', 'red', 'NONE')

call s:highlight('CursorColumn', 'none', 'gray', 'NONE')
call s:highlight('CursorLine', 'none', 'gray', 'NONE')
call s:highlight('MatchParen', 'none', 'gray', 'NONE')
call s:highlight('Visual', 'none', 'gray', 'NONE')

call s:highlight('Error', 'red', 'none', 'reverse')
call s:highlight('ErrorMsg', 'red', 'none', 'NONE')
call s:highlight('WarningMsg', 'yellow', 'none', 'NONE')

call s:highlight('Todo', 'yellow', 'none', 'NONE')

call s:highlight('CursorLineNr', 'yellow', 'none', 'NONE')

call s:highlight('Search', 'yellow', 'none', 'reverse')
call s:highlight('IncSearch', 'yellow', 'none', 'reverse')
call s:highlight('Wildmenu', 'yellow', 'none', 'reverse')

call s:highlight('DiffAdd', 'green', 'none', 'NONE')
call s:highlight('DiffChange', 'blue', 'none', 'NONE')
call s:highlight('DiffDelete', 'red', 'none', 'NONE')
call s:highlight('DiffText', 'magenta', 'none', 'NONE')

call s:highlight('SpellBad', 'red', 'none', 'underline')
call s:highlight('SpellCap', 'blue', 'none', 'underline')
call s:highlight('SpellLocal', 'magenta', 'none', 'underline')
call s:highlight('SpellRare', 'magenta', 'none', 'underline')

call s:highlight('Pmenu', 'gray', 'none', 'reverse')
call s:highlight('PmenuSel', 'none', 'none', 'NONE')
call s:highlight('PmenuSbar', 'none', 'gray', 'NONE')
call s:highlight('PmenuThumb', 'gray', 'none', 'NONE')

" Specific to vim help files.
call s:highlight('helpHyperTextJump', 'magenta', 'none', 'NONE')
call s:highlight('helpOption', 'red', 'none', 'NONE')

delfunction s:highlight
unlet s:cterm
unlet s:gui
