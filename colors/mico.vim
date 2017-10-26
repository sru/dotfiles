" File: mico.vim
" Author: Sung Rim Huh <sungrimhuh@gmail.com>
" Description: MInimal COlorscheme.
" License: MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif

" Just assume dark background
set background=dark

let g:colors_name = 'mico'

if (has('gui_running') || &t_Co == 256 || exists('+termguicolors') && &termguicolors) && !get(g:, 'mico_use_term_colors')
  highlight Normal       term=NONE      cterm=NONE      gui=NONE      ctermfg=251  ctermbg=234  guifg=#c6c6c6 guibg=#1c1c1c guisp=NONE

  highlight LineNr       term=NONE      cterm=NONE      gui=NONE      ctermfg=237  ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE
  highlight NonText      term=NONE      cterm=NONE      gui=NONE      ctermfg=237  ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE
  highlight SpecialKey   term=NONE      cterm=NONE      gui=NONE      ctermfg=237  ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE
  highlight VertSplit    term=NONE      cterm=NONE      gui=NONE      ctermfg=237  ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE

  highlight Comment      term=NONE      cterm=NONE      gui=NONE      ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    guisp=NONE
  highlight FoldColumn   term=NONE      cterm=NONE      gui=NONE      ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    guisp=NONE
  highlight Folded       term=NONE      cterm=NONE      gui=NONE      ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    guisp=NONE

  highlight Cursor       term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 guisp=NONE
  highlight CursorIM     term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=251  guifg=#1c1c1c guibg=#c6c6c6 guisp=NONE

  highlight ColorColumn  term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#3a3a3a guisp=NONE
  highlight CursorColumn term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#3a3a3a guisp=NONE
  highlight CursorLine   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#3a3a3a guisp=NONE
  highlight Visual       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=237  guifg=NONE    guibg=#3a3a3a guisp=NONE

  highlight MatchParen   term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=243  guifg=#1c1c1c guibg=#767676 guisp=NONE

  highlight SignColumn   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=234  guifg=NONE    guibg=#1c1c1c guisp=NONE

  highlight Conceal      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Identifier   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Ignore       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Menu         term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight ModeMsg      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight MoreMsg      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight PreProc      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Question     term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight TabLine      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Tooltip      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Type         term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Underlined   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Scrollbar    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Statement    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight VisualNOS    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE

  highlight Constant     term=NONE      cterm=NONE      gui=NONE      ctermfg=167  ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE
  highlight ErrorMsg     term=NONE      cterm=NONE      gui=NONE      ctermfg=167  ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE
  highlight Special      term=NONE      cterm=NONE      gui=NONE      ctermfg=167  ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE
  highlight WarningMsg   term=NONE      cterm=NONE      gui=NONE      ctermfg=167  ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE

  highlight Error        term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=167  guifg=NONE    guibg=#d75f5f guisp=NONE

  highlight String       term=NONE      cterm=NONE      gui=NONE      ctermfg=143  ctermbg=NONE guifg=#afaf5f guibg=NONE    guisp=NONE

  highlight CursorLineNr term=NONE      cterm=NONE      gui=NONE      ctermfg=221  ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE
  highlight Function     term=NONE      cterm=NONE      gui=NONE      ctermfg=221  ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE
  highlight Title        term=NONE      cterm=NONE      gui=NONE      ctermfg=221  ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE
  highlight Todo         term=NONE      cterm=NONE      gui=NONE      ctermfg=221  ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE

  highlight IncSearch    term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=221  guifg=NONE    guibg=#ffd75f guisp=NONE
  highlight Search       term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=221  guifg=NONE    guibg=#ffd75f guisp=NONE
  highlight WildMenu     term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=221  guifg=NONE    guibg=#ffd75f guisp=NONE

  highlight Directory    term=NONE      cterm=NONE      gui=NONE      ctermfg=67   ctermbg=NONE guifg=#5f875f guibg=NONE    guisp=NONE

  highlight StatusLine   term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=243  guifg=#1c1c1c guibg=#767676 guisp=NONE
  highlight StatusLineNC term=NONE      cterm=NONE      gui=NONE      ctermfg=234  ctermbg=237  guifg=#1c1c1c guibg=#3a3a3a guisp=NONE

  highlight DiffAdd      term=NONE      cterm=NONE      gui=NONE      ctermfg=150  ctermbg=234  guifg=#afd787 guibg=#1c1c1c guisp=NONE
  highlight DiffChange   term=NONE      cterm=NONE      gui=NONE      ctermfg=67   ctermbg=234  guifg=#5f875f guibg=#1c1c1c guisp=NONE
  highlight DiffDelete   term=NONE      cterm=NONE      gui=NONE      ctermfg=167  ctermbg=234  guifg=#d75f5f guibg=#1c1c1c guisp=NONE
  highlight DiffText     term=NONE      cterm=NONE      gui=NONE      ctermfg=110  ctermbg=234  guifg=#87afd7 guibg=#1c1c1c guisp=NONE

  highlight SpellBad     term=underline cterm=underline gui=underline ctermfg=96   ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE
  highlight SpellCap     term=underline cterm=underline gui=underline ctermfg=96   ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE
  highlight SpellLocal   term=underline cterm=underline gui=underline ctermfg=96   ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE
  highlight SpellRare    term=underline cterm=underline gui=underline ctermfg=96   ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE

  highlight Pmenu        term=NONE      cterm=NONE      gui=NONE      ctermfg=251  ctermbg=237  guifg=#c6c6c6 guibg=#3a3a3a guisp=NONE
  highlight PmenuSel     term=NONE      cterm=NONE      gui=NONE      ctermfg=237  ctermbg=251  guifg=#3a3a3a guibg=#c6c6c6 guisp=NONE
  highlight PmenuSbar    term=NONE      cterm=NONE      gui=NONE      ctermfg=251  ctermbg=237  guifg=#c6c6c6 guibg=#3a3a3a guisp=NONE
  highlight PmenuThumb   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=243  guifg=NONE    guibg=#767676 guisp=NONE

else

  highlight Normal       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=#c6c6c6 guibg=#1c1c1c guisp=NONE

  highlight LineNr       term=NONE      cterm=NONE      gui=NONE      ctermfg=0    ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE
  highlight NonText      term=NONE      cterm=NONE      gui=NONE      ctermfg=0    ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE
  highlight SpecialKey   term=NONE      cterm=NONE      gui=NONE      ctermfg=0    ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE
  highlight VertSplit    term=NONE      cterm=NONE      gui=NONE      ctermfg=0    ctermbg=NONE guifg=#3a3a3a guibg=NONE    guisp=NONE

  highlight Comment      term=NONE      cterm=NONE      gui=NONE      ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    guisp=NONE
  highlight FoldColumn   term=NONE      cterm=NONE      gui=NONE      ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    guisp=NONE
  highlight Folded       term=NONE      cterm=NONE      gui=NONE      ctermfg=8    ctermbg=NONE guifg=#767676 guibg=NONE    guisp=NONE

  highlight Cursor       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=#1c1c1c guibg=#c6c6c6 guisp=NONE
  highlight CursorIM     term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=#1c1c1c guibg=#c6c6c6 guisp=NONE

  highlight ColorColumn  term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#3a3a3a guisp=NONE
  highlight CursorColumn term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#3a3a3a guisp=NONE
  highlight CursorLine   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#3a3a3a guisp=NONE
  highlight Visual       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=NONE    guibg=#3a3a3a guisp=NONE

  highlight MatchParen   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=8    guifg=#1c1c1c guibg=#767676 guisp=NONE

  highlight SignColumn   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=#1c1c1c guisp=NONE

  highlight Conceal      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Identifier   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Ignore       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Menu         term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight ModeMsg      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight MoreMsg      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight PreProc      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Question     term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight TabLine      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Tooltip      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Type         term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Underlined   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Scrollbar    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Special      term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight Statement    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE
  highlight VisualNOS    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    guisp=NONE

  highlight Constant     term=NONE      cterm=NONE      gui=NONE      ctermfg=1    ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE
  highlight ErrorMsg     term=NONE      cterm=NONE      gui=NONE      ctermfg=1    ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE
  highlight WarningMsg   term=NONE      cterm=NONE      gui=NONE      ctermfg=1    ctermbg=NONE guifg=#d75f5f guibg=NONE    guisp=NONE

  highlight Error        term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=1    guifg=NONE    guibg=#d75f5f guisp=NONE

  highlight String       term=NONE      cterm=NONE      gui=NONE      ctermfg=2    ctermbg=NONE guifg=#afaf5f guibg=NONE    guisp=NONE

  highlight CursorLineNr term=NONE      cterm=NONE      gui=NONE      ctermfg=11   ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE
  highlight Function     term=NONE      cterm=NONE      gui=NONE      ctermfg=11   ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE
  highlight Title        term=NONE      cterm=NONE      gui=NONE      ctermfg=11   ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE
  highlight Todo         term=NONE      cterm=NONE      gui=NONE      ctermfg=11   ctermbg=NONE guifg=#ffd75f guibg=NONE    guisp=NONE

  highlight IncSearch    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=11   guifg=NONE    guibg=#ffd75f guisp=NONE
  highlight Search       term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=11   guifg=NONE    guibg=#ffd75f guisp=NONE
  highlight WildMenu     term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=11   guifg=NONE    guibg=#ffd75f guisp=NONE

  highlight Directory    term=NONE      cterm=NONE      gui=NONE      ctermfg=4    ctermbg=NONE guifg=#5f875f guibg=NONE    guisp=NONE

  highlight StatusLine   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=8    guifg=#1c1c1c guibg=#767676 guisp=NONE
  highlight StatusLineNC term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=#1c1c1c guibg=#3a3a3a guisp=NONE

  highlight DiffAdd      term=NONE      cterm=NONE      gui=NONE      ctermfg=10   ctermbg=NONE guifg=#afd787 guibg=#1c1c1c guisp=NONE
  highlight DiffChange   term=NONE      cterm=NONE      gui=NONE      ctermfg=4    ctermbg=NONE guifg=#5f875f guibg=#1c1c1c guisp=NONE
  highlight DiffDelete   term=NONE      cterm=NONE      gui=NONE      ctermfg=1    ctermbg=NONE guifg=#d75f5f guibg=#1c1c1c guisp=NONE
  highlight DiffText     term=NONE      cterm=NONE      gui=NONE      ctermfg=12   ctermbg=NONE guifg=#87afd7 guibg=#1c1c1c guisp=NONE

  highlight SpellBad     term=underline cterm=underline gui=underline ctermfg=5    ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE
  highlight SpellCap     term=underline cterm=underline gui=underline ctermfg=5    ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE
  highlight SpellLocal   term=underline cterm=underline gui=underline ctermfg=5    ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE
  highlight SpellRare    term=underline cterm=underline gui=underline ctermfg=5    ctermbg=NONE guifg=#875f87 guibg=NONE    guisp=NONE

  highlight Pmenu        term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=#c6c6c6 guibg=#3a3a3a guisp=NONE
  highlight PmenuSel     term=NONE      cterm=NONE      gui=NONE      ctermfg=0    ctermbg=NONE guifg=#3a3a3a guibg=#c6c6c6 guisp=NONE
  highlight PmenuSbar    term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=0    guifg=#c6c6c6 guibg=#3a3a3a guisp=NONE
  highlight PmenuThumb   term=NONE      cterm=NONE      gui=NONE      ctermfg=NONE ctermbg=8    guifg=NONE    guibg=#767676 guisp=NONE

endif
