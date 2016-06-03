" get $VIMHOME variable
call var#vars()

" check if vim-plug exists
if !empty(globpath(&rtp, 'autoload/plug.vim'))
  call plug#begin($VIMHOME . '/plugged')

  " functionality
  Plug 'tommcdo/vim-lion'
  Plug 'tpope/vim-commentary'
  Plug 'justinmk/vim-dirvish'
  Plug 'kana/vim-operator-user' | Plug 'rhysd/vim-operator-surround'

  " text objects
  Plug 'coderifous/textobj-word-column.vim'

  " language
  Plug 'sheerun/vim-polyglot'

  " Colorscheme
  Plug 'w0ng/vim-hybrid'

  call plug#end()
endif

" enable built-in matchit
runtime macros/matchit.vim

if has('autocmd')
  filetype plugin indent on
endif

" fail without annoying the user
silent! colorscheme hybrid

if has('syntax') && !exists('g:syntax_on')
  " syntax highlighting
  syntax on
endif

" functions

function! s:EnsureDirExists(dir, ...)
  let l:dir = expand(a:dir)
  if !isdirectory(l:dir)
    if !empty(glob(l:dir))
      echo l:dir . ' is already being used.'
    elseif exists('*mkdir')
      if a:0 >= 2
        call mkdir(l:dir, 'p', a:2)
      else
        call mkdir(l:dir, 'p')
      endif
    else
      echo 'Please create directory: ' . l:dir
    endif
  endif
endfunction

function! s:SetIndentWidth()
  let l:et = nr2char(getchar())
  let l:width = nr2char(getchar())
  if !l:width
    echoerr "Number expected"
    return
  endif
  if l:et ==? 't'
    setlocal noexpandtab
    let &l:shiftwidth = l:width
    let &l:softtabstop = 0 " default softtabstop is 0
    let &l:tabstop = l:width
  elseif l:et ==? 's'
    setlocal expandtab
    let &l:shiftwidth = l:width
    let &l:softtabstop = l:width
    let &l:tabstop = 8 " default tabstop is 8
  endif
endfunction

function! s:StripTrailingWhite()
  if &l:binary
    return
  endif
  let l:winview = winsaveview()
  silent! %s/\s\+$//
  call winrestview(l:winview)
endfunction

" plugin settings

" vim-operator-surround
let g:operator#surround#no_default_blocks = 1
let g:operator#surround#blocks = {
\   '-': [
\     {
\       'block': ['( ', ' )'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': [' (', ' )'],
\     },
\     {
\       'block': ['{ ', ' }'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': [' {', ' }'],
\     },
\     {
\       'block': ['(', ')'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['(', ')'],
\     },
\     {
\       'block': ['[', ']'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['[', ']'],
\     },
\     {
\       'block': ['{', '}'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['{', '}'],
\     },
\     {
\       'block': ['<', '>'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['<', '>'],
\     },
\     {
\       'block': ['"', '"'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['"'],
\     },
\     {
\       'block': ["'", "'"],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ["'"],
\     },
\     {
\       'block': ['`', '`'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['`'],
\     },
\   ],
\ }

" settings

let mapleader = "\<Space>"

" background
set background=dark

" allow use backspace everything in insert mode
set backspace=indent,eol,start

" don't show line numbers
set nonumber

" show current mode
set showmode

" show incomplete cmds
set showcmd

" show row and column of cursor
set ruler

" display eol, tabs, and trailing spaces
set list
set listchars=tab:>-,eol:-,extends:>,precedes:<,trail:~

" statusline
" %f - tail of the filename
" %y - filetype
" %r - readonly flag
" %m - modifier flag
" %= - left/right separator
" %c - cursor column
" %l - cursor line
" %P - percent through file
set statusline =\ %f\ %y%r%m%=\ %c\ %l\ %P\  " explanation above
set laststatus=2

" lots of histories
set history=100

" file format
set fileformat=unix
set encoding=utf-8

" default indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" text width for formatting
set textwidth=80
set colorcolumn=+1

" scrolling
set scrolloff=3

" tab completion wild options
set wildmode=list:longest
set wildmenu

" search
set ignorecase " ignore case
set smartcase  " don't ignore case when capital letter is typed

" c = auto-wrap comments
" r = insert current comment leader when pressing enter in Insert mode
" o = insert current comment leader when o or O is pressed in Normal mode
" q = format comments with gq
" n = numbered list indent
" l = long lines are not broken in insert mode
" j = remove comment leader when joining
set formatoptions=croqnl
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

" Only one space after sentence
set nojoinspaces

" hide buffers when not displayed
set hidden

" fail instead of asking dialog
set noconfirm

" abbreviate messages
" a = shorten bunch of stuff, see :h shortmess
" t = truncate file message if it's too long
" I = skip intro message
set shortmess=atI

" yes swap files
call <SID>EnsureDirExists(expand($VIMHOME . '/swap'))
let &directory = $VIMHOME . '/swap//,.'
set swapfile

" when file is changed outside of vim, read it again
set autoread

" do not search included files
set complete-=i

" better option for complete popup
set completeopt=menu,menuone,longest

" undo settings
if has('persistent_undo')
  call <SID>EnsureDirExists($VIMHOME . '/undo')
  let &undodir = $VIMHOME . '/undo'
  set undofile
  set undolevels=3000
endif

" persistent folds and cursor
if has('mksession')
  call <SID>EnsureDirExists($VIMHOME . '/view')
  let &viewdir = $VIMHOME . '/view'
  set viewoptions=cursor,folds,slash,unix
endif

" search
if has('extra_search')
  set hlsearch  " highlight searches
  set incsearch " find the next match as typing the search
endif

" cindent
if has('cindent')

  " cindent options
  set cindent
  set cinoptions=c1,(s,m1,g0,l1

  " somehow indentkeys is different from cinkeys
  set indentkeys+=0)

  if has('autocmd')
    augroup cindent_overrides
      autocmd!
      autocmd FileType * setlocal cinoptions=c1,(s,m1,g0,l1
      autocmd FileType * setlocal indentkeys+=0)
    augroup END
  endif
endif

" single line comment
if has('comments') && has('autocmd')

  function! s:SingleLineComment()
    for l:c in split(&l:comments, ',')
      if l:c =~ '^:'

        " vimscript being ridiculous
        if l:c == ':"'
          execute 'set comments-=:\"'
          execute 'set comments+=f:\"'
        else
          execute 'set comments-=' . l:c
          execute 'set comments+=f' . l:c
        endif
      endif
    endfor
  endfunction

  augroup singlelinecomment
    autocmd!
    autocmd FileType * call <SID>SingleLineComment()
  augroup END
endif

if has('autocmd')

  " don't show trailing in insert mode
  " when saving, strip trailing white spaces
  augroup trailing
    autocmd!
    autocmd InsertEnter * setlocal listchars-=trail:~
    autocmd InsertLeave * setlocal listchars+=trail:~
    autocmd BufWritePre * call <SID>StripTrailingWhite()
  augroup END

  " annoying ftplugins
  augroup ftoverrides
    autocmd!
    if v:version > 703 || v:version == 703 && has('patch541')
      autocmd FileType * setlocal formatoptions=croqnlj
    else
      autocmd FileType * setlocal formatoptions=croqnl
    endif
  augroup END

  " colorscheme changes
  " shamelessly copied statusline from Apprentice colorscheme at
  " https://github.com/romainl/Apprentice
  augroup colorschemechanges
    autocmd!
    autocmd BufWinEnter * hi StatusLine cterm=NONE ctermbg=101 ctermfg=235
                                      \ gui=NONE guibg=#87875f guifg=#262626
  augroup END
endif

" keep viminfo file inside
let &viminfo = '''50,<100,s10,h,n' . $VIMHOME . '/viminfo'

" key bindings

" no highlight
noremap <silent> <leader>/ :nohlsearch<cr>

" make j and k move display lines, not actual lines
nnoremap j gj
nnoremap k gk

" switch buffers
nnoremap <leader>b :buffers<cr>:buffer<space>
nnoremap ]b :bnext<cr>
nnoremap [b :bprevious<cr>

" switch quickfix
nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>

" make Y consistent with C and D
nnoremap Y y$

" set indent width
nnoremap <silent> <leader>i :call <SID>SetIndentWidth()<cr>

" operator surround
nmap <silent>sa <Plug>(operator-surround-append)
nmap <silent>sd <Plug>(operator-surround-delete)
nmap <silent>sr <Plug>(operator-surround-replace)
vmap <silent>sa <Plug>(operator-surround-append)
vmap <silent>sd <Plug>(operator-surround-delete)
vmap <silent>sr <Plug>(operator-surround-replace)
