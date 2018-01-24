" File: mico.vim
" Author: Sung Rim Huh <sungrimhuh@gmail.com>
" Description: MInimal COlorscheme.
" License: MIT

" Only dark.
set background=dark

highlight clear

if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mico'

" Colors. Based on w0ng/vim-hybrid.
" | Name       | ANSI | XTERM | HEX     |
" | ---------- | ---- | ----- | ------- |
" | Background | NONE | 234   | #1c1c1c |
" | Foreground | NONE | 251   | #c6c6c6 |
" | Black      | 0    | 237   | #282a2e |
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

if !get(g:, 'mico_use_16') &&
\  has('gui_running') ||
\  (exists('+termguicolors') && &termguicolors) ||
\  ($TERM =~ '256' || &t_Co >= 256)

  highlight Normal       ctermfg=251  ctermbg=234  guifg=#c6c6c6 guibg=#1c1c1c cterm=NONE      gui=NONE

  highlight LineNr       ctermfg=237  ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE
  highlight NonText      ctermfg=237  ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE
  highlight SpecialKey   ctermfg=237  ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE
  highlight VertSplit    ctermfg=237  ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE

  highlight Comment      ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE      gui=NONE
  highlight FoldColumn   ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE      gui=NONE
  highlight Folded       ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE      gui=NONE

  highlight Cursor       ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE      gui=NONE
  highlight CursorIM     ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE      gui=NONE

  highlight ColorColumn  ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE
  highlight CursorColumn ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE
  highlight CursorLine   ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE
  highlight Visual       ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE

  highlight MatchParen   ctermfg=234  ctermbg=243  guifg=#1c1c1c guibg=#767676 cterm=NONE      gui=NONE

  highlight SignColumn   ctermfg=NONE ctermbg=234  guifg=NONE    guibg=#1c1c1c cterm=NONE      gui=NONE

  highlight Conceal      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Function     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Identifier   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Ignore       ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Menu         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight ModeMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight MoreMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight PreProc      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Question     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight TabLine      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Tooltip      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Type         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Underlined   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Scrollbar    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Statement    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight VisualNOS    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE

  highlight Constant     ctermfg=167  ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE      gui=NONE
  highlight ErrorMsg     ctermfg=167  ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE      gui=NONE
  highlight WarningMsg   ctermfg=167  ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE      gui=NONE

  highlight Special      ctermfg=139  ctermbg=NONE guifg=#b294bb guibg=NONE    cterm=NONE      gui=NONE

  highlight Error        ctermfg=234  ctermbg=167  guifg=#1c1c1c guibg=#cc6666 cterm=NONE      gui=NONE

  highlight String       ctermfg=143  ctermbg=NONE guifg=#b5bd68 guibg=NONE    cterm=NONE      gui=NONE

  highlight CursorLineNr ctermfg=222  ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE      gui=NONE
  highlight Title        ctermfg=222  ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE      gui=NONE
  highlight Todo         ctermfg=222  ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE      gui=NONE

  highlight IncSearch    ctermfg=234  ctermbg=222  guifg=#1c1c1c guibg=#f0c674 cterm=NONE      gui=NONE
  highlight Search       ctermfg=234  ctermbg=222  guifg=#1c1c1c guibg=#f0c674 cterm=NONE      gui=NONE
  highlight WildMenu     ctermfg=234  ctermbg=222  guifg=#1c1c1c guibg=#f0c674 cterm=NONE      gui=NONE

  highlight Directory    ctermfg=67   ctermbg=NONE guifg=#5f819d guibg=NONE    cterm=NONE      gui=NONE

  highlight StatusLine   ctermfg=234  ctermbg=243  guifg=#1c1c1c guibg=#767676 cterm=NONE      gui=NONE
  highlight StatusLineNC ctermfg=234  ctermbg=237  guifg=#1c1c1c guibg=#282a2e cterm=NONE      gui=NONE

  highlight DiffAdd      ctermfg=143  ctermbg=234  guifg=#b5bd68 guibg=#1c1c1c cterm=NONE      gui=NONE
  highlight DiffChange   ctermfg=67   ctermbg=234  guifg=#5f819d guibg=#1c1c1c cterm=NONE      gui=NONE
  highlight DiffDelete   ctermfg=167  ctermbg=234  guifg=#cc6666 guibg=#1c1c1c cterm=NONE      gui=NONE
  highlight DiffText     ctermfg=109  ctermbg=234  guifg=#87afaf guibg=#1c1c1c cterm=NONE      gui=NONE

  highlight SpellBad     ctermfg=96   ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl
  highlight SpellCap     ctermfg=96   ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl
  highlight SpellLocal   ctermfg=96   ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl
  highlight SpellRare    ctermfg=96   ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl

  highlight Pmenu        ctermfg=251  ctermbg=237  guifg=#c6c6c6 guibg=#282a2e cterm=NONE      gui=NONE
  highlight PmenuSel     ctermfg=237  ctermbg=251  guifg=#282a2e guibg=#c6c6c6 cterm=NONE      gui=NONE
  highlight PmenuSbar    ctermfg=251  ctermbg=237  guifg=#c6c6c6 guibg=#282a2e cterm=NONE      gui=NONE
  highlight PmenuThumb   ctermfg=NONE ctermbg=243  guifg=NONE    guibg=#767676 cterm=NONE      gui=NONE

else

  highlight Normal       ctermfg=NONE ctermbg=NONE guifg=#c6c6c6 guibg=#1c1c1c cterm=NONE      gui=NONE

  highlight LineNr       ctermfg=0    ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE
  highlight NonText      ctermfg=0    ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE
  highlight SpecialKey   ctermfg=0    ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE
  highlight VertSplit    ctermfg=0    ctermbg=NONE guifg=#282a2e guibg=NONE    cterm=NONE      gui=NONE

  highlight Comment      ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE      gui=NONE
  highlight FoldColumn   ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE      gui=NONE
  highlight Folded       ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE      gui=NONE

  highlight Cursor       ctermfg=bg   ctermbg=fg   guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE      gui=NONE
  highlight CursorIM     ctermfg=bg   ctermbg=fg   guifg=#1c1c1c guibg=#c6c6c6 cterm=NONE      gui=NONE

  highlight ColorColumn  ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE
  highlight CursorColumn ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE
  highlight CursorLine   ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE
  highlight Visual       ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#282a2e cterm=NONE      gui=NONE

  highlight MatchParen   ctermfg=bg   ctermbg=8    guifg=#1c1c1c guibg=#767676 cterm=NONE      gui=NONE

  highlight SignColumn   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=#1c1c1c cterm=NONE      gui=NONE

  highlight Conceal      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Function     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Identifier   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Ignore       ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Menu         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight ModeMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight MoreMsg      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight PreProc      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Question     ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight TabLine      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Tooltip      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Type         ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Underlined   ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Scrollbar    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight Statement    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE
  highlight VisualNOS    ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=NONE      gui=NONE

  highlight Constant     ctermfg=9    ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE      gui=NONE
  highlight ErrorMsg     ctermfg=9    ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE      gui=NONE
  highlight WarningMsg   ctermfg=9    ctermbg=NONE guifg=#cc6666 guibg=NONE    cterm=NONE      gui=NONE

  highlight Special      ctermfg=13   ctermbg=NONE guifg=#b294bb guibg=NONE    cterm=NONE      gui=NONE

  highlight Error        ctermfg=bg   ctermbg=9    guifg=#1c1c1c guibg=#cc6666 cterm=NONE      gui=NONE

  highlight String       ctermfg=10   ctermbg=NONE guifg=#b5bd68 guibg=NONE    cterm=NONE      gui=NONE

  highlight CursorLineNr ctermfg=11   ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE      gui=NONE
  highlight Title        ctermfg=11   ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE      gui=NONE
  highlight Todo         ctermfg=11   ctermbg=NONE guifg=#f0c674 guibg=NONE    cterm=NONE      gui=NONE

  highlight IncSearch    ctermfg=bg   ctermbg=11   guifg=#1c1c1c guibg=#f0c674 cterm=NONE      gui=NONE
  highlight Search       ctermfg=bg   ctermbg=11   guifg=#1c1c1c guibg=#f0c674 cterm=NONE      gui=NONE
  highlight WildMenu     ctermfg=bg   ctermbg=11   guifg=#1c1c1c guibg=#f0c674 cterm=NONE      gui=NONE

  highlight Directory    ctermfg=4    ctermbg=NONE guifg=#5f819d guibg=NONE    cterm=NONE      gui=NONE

  highlight StatusLine   ctermfg=bg   ctermbg=8    guifg=#1c1c1c guibg=#767676 cterm=NONE      gui=NONE
  highlight StatusLineNC ctermfg=bg   ctermbg=0    guifg=#1c1c1c guibg=#282a2e cterm=NONE      gui=NONE

  highlight DiffAdd      ctermfg=10   ctermbg=NONE guifg=#b5bd68 guibg=#1c1c1c cterm=NONE      gui=NONE
  highlight DiffChange   ctermfg=4    ctermbg=NONE guifg=#5f819d guibg=#1c1c1c cterm=NONE      gui=NONE
  highlight DiffDelete   ctermfg=9    ctermbg=NONE guifg=#cc6666 guibg=#1c1c1c cterm=NONE      gui=NONE
  highlight DiffText     ctermfg=12   ctermbg=NONE guifg=#87afaf guibg=#1c1c1c cterm=NONE      gui=NONE

  highlight SpellBad     ctermfg=5    ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl
  highlight SpellCap     ctermfg=5    ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl
  highlight SpellLocal   ctermfg=5    ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl
  highlight SpellRare    ctermfg=5    ctermbg=NONE guifg=#85678f guibg=NONE    cterm=undercurl gui=undercurl

  highlight Pmenu        ctermfg=NONE ctermbg=0    guifg=#c6c6c6 guibg=#282a2e cterm=NONE      gui=NONE
  highlight PmenuSel     ctermfg=0    ctermbg=fg   guifg=#282a2e guibg=#c6c6c6 cterm=NONE      gui=NONE
  highlight PmenuSbar    ctermfg=NONE ctermbg=0    guifg=#c6c6c6 guibg=#282a2e cterm=NONE      gui=NONE
  highlight PmenuThumb   ctermfg=NONE ctermbg=8    guifg=NONE    guibg=#767676 cterm=NONE      gui=NONE

endif
