" File: mico.vim
" Author: Sung Rim Huh <sungrimhuh@gmail.com>
" Description: MInimal COlorscheme.
" License: MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mico'

" Colors. Based on w0ng/vim-hybrid.
" | Name       | ANSI | XTERM | HEX     |
" | ---------- | ---- | ----- | ------- |
" | Black      | 0    | 234   | #1c1c1c |
" | Red        | 1    | 131   | #a54242 |
" | Green      | 2    | 101   | #8c9440 |
" | Yellow     | 3    | 173   | #de935f |
" | Blue       | 4    | 67    | #5f819d |
" | Magenta    | 5    | 96    | #85678f |
" | Cyan       | 6    | 66    | #5f8787 |
" | White      | 7    | 251   | #c6c6c6 |
" | *Black     | 8    | 243   | #767676 |
" | *Red       | 9    | 167   | #cc6666 |
" | *Green     | 10   | 143   | #b5bd68 |
" | *Yellow    | 11   | 222   | #f0c674 |
" | *Blue      | 12   | 109   | #87afaf |
" | *Magenta   | 13   | 139   | #b294bb |
" | *Cyan      | 14   | 109   | #8abeb7 |
" | *White     | 15   | 254   | #e4e4e4 |

if !get(g:, 'mico_use_term_colors') &&
\  has('gui_running') ||
\  (exists('+termguicolors') && &termguicolors) ||
\  ($TERM =~ '256' || &t_Co >= 256)

  highlight Normal       ctermfg=251  ctermbg=234  guifg=#c6c6c6 guibg=#1c1c1c cterm=NONE gui=NONE

  highlight FoldColumn   ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE gui=NONE
  highlight Folded       ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE gui=NONE
  highlight LineNr       ctermfg=243  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight NonText      ctermfg=243  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight SpecialKey   ctermfg=243  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight StatusLine   ctermfg=243  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight StatusLineNC ctermfg=243  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight VertSplit    ctermfg=243  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE

  highlight Comment      ctermfg=101  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE gui=NONE

  highlight Cursor       ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE
  highlight CursorIM     ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE

  highlight ColorColumn  ctermfg=NONE ctermbg=131  guifg=NONE    guibg=#a54242 cterm=NONE gui=NONE
  highlight CursorColumn ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE
  highlight CursorLine   ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE
  highlight Visual       ctermfg=NONE ctermbg=243  guifg=NONE    guibg=#767676 cterm=NONE gui=NONE

  highlight MatchParen   ctermfg=234  ctermbg=243  guifg=#1c1c1c guibg=#767676 cterm=NONE gui=NONE

  highlight SignColumn   ctermfg=NONE ctermbg=234  guifg=NONE    guibg=#1c1c1c cterm=NONE gui=NONE

  highlight Conceal      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Directory    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Function     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Identifier   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Ignore       ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Menu         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight ModeMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight MoreMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight PreProc      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Question     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Special      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight TabLine      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Title        ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Tooltip      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Type         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Underlined   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Scrollbar    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Statement    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight VisualNOS    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE

  highlight Constant     ctermfg=131  ctermbg=NONE guifg=#a54242 guibg=NONE    cterm=NONE gui=NONE

  highlight ErrorMsg     ctermfg=167  ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE gui=NONE
  highlight WarningMsg   ctermfg=167  ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE gui=NONE

  highlight Error        ctermfg=234  ctermbg=167  guifg=#1c1c1c guibg=#cc6666 cterm=NONE gui=NONE

  highlight CursorLineNr ctermfg=222  ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE gui=NONE
  highlight Todo         ctermfg=222  ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE gui=NONE

  highlight IncSearch    ctermfg=234  ctermbg=222  guifg=#1c1c1c guibg=#f0c674 cterm=NONE gui=NONE
  highlight Search       ctermfg=234  ctermbg=222  guifg=#1c1c1c guibg=#f0c674 cterm=NONE gui=NONE
  highlight WildMenu     ctermfg=234  ctermbg=222  guifg=#1c1c1c guibg=#f0c674 cterm=NONE gui=NONE

  highlight DiffAdd      ctermfg=143  ctermbg=234  guifg=#b5bd68 guibg=#1c1c1c cterm=NONE gui=NONE
  highlight DiffChange   ctermfg=67   ctermbg=234  guifg=#5f819d guibg=#1c1c1c cterm=NONE gui=NONE
  highlight DiffDelete   ctermfg=167  ctermbg=234  guifg=#cc6666 guibg=#1c1c1c cterm=NONE gui=NONE
  highlight DiffText     ctermfg=109  ctermbg=234  guifg=#87afaf guibg=#1c1c1c cterm=NONE gui=NONE

  highlight SpellBad     ctermfg=234  ctermbg=131  guifg=#1c1c1c guibg=#a54242 cterm=NONE gui=NONE
  highlight SpellCap     ctermfg=234  ctermbg=96   guifg=#1c1c1c guibg=#85678f cterm=NONE gui=NONE
  highlight SpellLocal   ctermfg=234  ctermbg=96   guifg=#1c1c1c guibg=#85678f cterm=NONE gui=NONE
  highlight SpellRare    ctermfg=234  ctermbg=96   guifg=#1c1c1c guibg=#85678f cterm=NONE gui=NONE

  highlight Pmenu        ctermfg=234  ctermbg=243  guifg=#1c1c1c guibg=#767676 cterm=NONE gui=NONE
  highlight PmenuSel     ctermfg=251  ctermbg=234  guifg=#c6c6c6 guibg=#1c1c1c cterm=NONE gui=NONE
  highlight PmenuSbar    ctermfg=251  ctermbg=243  guifg=#c6c6c6 guibg=#767676 cterm=NONE gui=NONE
  highlight PmenuThumb   ctermfg=NONE ctermbg=251  guifg=NONE    guibg=#c6c6c6 cterm=NONE gui=NONE

else

  highlight Normal       ctermfg=7    ctermbg=0    guifg=#c6c6c6 guibg=#1c1c1c cterm=NONE gui=NONE

  highlight FoldColumn   ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE gui=NONE
  highlight Folded       ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE gui=NONE
  highlight LineNr       ctermfg=8    ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight NonText      ctermfg=8    ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight SpecialKey   ctermfg=8    ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight StatusLine   ctermfg=8    ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight StatusLineNC ctermfg=8    ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE
  highlight VertSplit    ctermfg=8    ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE gui=NONE

  highlight Comment      ctermfg=2    ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE gui=NONE

  highlight Cursor       ctermfg=0    ctermbg=7    guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE
  highlight CursorIM     ctermfg=0    ctermbg=7    guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE

  highlight ColorColumn  ctermfg=NONE ctermbg=1    guifg=NONE    guibg=#a54242 cterm=NONE gui=NONE
  highlight CursorColumn ctermfg=0    ctermbg=7    guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE
  highlight CursorLine   ctermfg=0    ctermbg=7    guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE gui=NONE
  highlight Visual       ctermfg=NONE ctermbg=8    guifg=NONE    guibg=#767676 cterm=NONE gui=NONE

  highlight MatchParen   ctermfg=0    ctermbg=8    guifg=#1c1c1c guibg=#767676 cterm=NONE gui=NONE

  highlight SignColumn   ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#1c1c1c cterm=NONE gui=NONE

  highlight Conceal      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Directory    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Function     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Identifier   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Ignore       ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Menu         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight ModeMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight MoreMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight PreProc      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Question     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Special      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight TabLine      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Title        ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Tooltip      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Type         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Underlined   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Scrollbar    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight Statement    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE
  highlight VisualNOS    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE gui=NONE

  highlight Constant     ctermfg=1    ctermbg=NONE guifg=#a54242 guibg=NONE    cterm=NONE gui=NONE

  highlight ErrorMsg     ctermfg=9    ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE gui=NONE
  highlight WarningMsg   ctermfg=9    ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE gui=NONE

  highlight Error        ctermfg=0    ctermbg=9    guifg=#1c1c1c guibg=#cc6666 cterm=NONE gui=NONE

  highlight CursorLineNr ctermfg=11   ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE gui=NONE
  highlight Todo         ctermfg=11   ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE gui=NONE

  highlight IncSearch    ctermfg=0    ctermbg=11   guifg=#1c1c1c guibg=#f0c674 cterm=NONE gui=NONE
  highlight Search       ctermfg=0    ctermbg=11   guifg=#1c1c1c guibg=#f0c674 cterm=NONE gui=NONE
  highlight WildMenu     ctermfg=0    ctermbg=11   guifg=#1c1c1c guibg=#f0c674 cterm=NONE gui=NONE

  highlight DiffAdd      ctermfg=10   ctermbg=0    guifg=#b5bd68 guibg=#1c1c1c cterm=NONE gui=NONE
  highlight DiffChange   ctermfg=4    ctermbg=0    guifg=#5f819d guibg=#1c1c1c cterm=NONE gui=NONE
  highlight DiffDelete   ctermfg=9    ctermbg=0    guifg=#cc6666 guibg=#1c1c1c cterm=NONE gui=NONE
  highlight DiffText     ctermfg=12   ctermbg=0    guifg=#87afaf guibg=#1c1c1c cterm=NONE gui=NONE

  highlight SpellBad     ctermfg=0    ctermbg=1    guifg=#1c1c1c guibg=#a54242 cterm=NONE gui=NONE
  highlight SpellCap     ctermfg=0    ctermbg=5    guifg=#1c1c1c guibg=#85678f cterm=NONE gui=NONE
  highlight SpellLocal   ctermfg=0    ctermbg=5    guifg=#1c1c1c guibg=#85678f cterm=NONE gui=NONE
  highlight SpellRare    ctermfg=0    ctermbg=5    guifg=#1c1c1c guibg=#85678f cterm=NONE gui=NONE

  highlight Pmenu        ctermfg=0    ctermbg=8    guifg=#1c1c1c guibg=#767676 cterm=NONE gui=NONE
  highlight PmenuSel     ctermfg=7    ctermbg=0    guifg=#c6c6c6 guibg=#1c1c1c cterm=NONE gui=NONE
  highlight PmenuSbar    ctermfg=7    ctermbg=8    guifg=#c6c6c6 guibg=#767676 cterm=NONE gui=NONE
  highlight PmenuThumb   ctermfg=NONE ctermbg=7    guifg=NONE    guibg=#c6c6c6 cterm=NONE gui=NONE

endif
