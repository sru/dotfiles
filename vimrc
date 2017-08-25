" for no duplicate autocmds
augroup vimrc
  autocmd!
augroup END

" get the vim directory
if has('win32')
  let s:vim_dir = $HOME . '/vimfiles'
else
  let s:vim_dir = $HOME . '/.vim'
endif

" check if vim-plug exists
if !empty(globpath(&rtp, 'autoload/plug.vim'))
  call plug#begin(s:vim_dir . '/plugged')

  " functionality
  Plug 'tommcdo/vim-lion'
  Plug 'tpope/vim-commentary'
  Plug 'justinmk/vim-dirvish'
  Plug 'kana/vim-operator-user' | Plug 'rhysd/vim-operator-surround'

  " language
  Plug 'sheerun/vim-polyglot'

  " Colorscheme
  Plug 'w0ng/vim-hybrid'

  call plug#end()
endif

filetype plugin indent on

colorscheme mico

if !exists('g:syntax_on')
  syntax enable
endif

" functions

function! s:set_indent_width(opts)
  let l:et = a:opts[0]
  let l:width = str2nr(a:opts[1:])
  if !l:width
    echoerr 'Number expected'
    return
  endif
  if l:et ==? 't'
    setlocal noexpandtab
    let &l:shiftwidth = l:width
    setlocal softtabstop&
    let &l:tabstop = l:width
  elseif l:et ==? 's'
    setlocal expandtab
    let &l:shiftwidth = l:width
    let &l:softtabstop = l:width
    setlocal tabstop&
  else
    echoerr 'Invalid first character: t or s expected'
    return
  endif
endfunction

function! s:strip_trailing_white()
  if &l:binary
    return
  endif
  let l:winview = winsaveview()
  silent! %s/\s\+$//
  call winrestview(l:winview)
endfunction

function! s:single_line_comment()
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

" plugin settings

" vim-operator-surround
let g:operator#surround#no_default_blocks = 1
let g:operator#surround#blocks = {
\   '-': [
\     {
\       'block': ['( ', ' )'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['('],
\     },
\     {
\       'block': ['{ ', ' }'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['{'],
\     },
\     {
\       'block': ['(', ')'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': [')'],
\     },
\     {
\       'block': ['[', ']'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': [']'],
\     },
\     {
\       'block': ['{', '}'],
\       'motionwise': ['char', 'line', 'block'],
\       'keys': ['}'],
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

" allow use backspace everything in insert mode
set backspace=indent,eol,start

" don't show line numbers
set nonumber

" show current mode
set showmode

" show incomplete cmds
set showcmd

" display tabs and trailing spaces
set list
set listchars=tab:>-,trail:-

" statusline
" %f - tail of the filename
" %y - filetype
" %r - readonly flag
" %m - modifier flag
" %= - left/right separator
" %c - cursor column
" %l - cursor line
" %P - percent through file
set statusline=\ %f\ %y%r%m%=\ %c\ %l\ %P\  " explanation above
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

" scrolling
set scrolloff=3

" tab completion wild options
set wildmenu
set wildmode=list:longest

" search
set incsearch " find the next match as typing the search
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
let &directory = s:vim_dir . '/swap//,' . &directory
set swapfile

" when file is changed outside of vim, read it again
set autoread

" do not search included files
set complete-=i

" better option for complete popup
set completeopt=menu,menuone,longest

" undo settings
if has('persistent_undo')
  let &undodir = s:vim_dir . '/undo,' . &undodir
  set undofile
  set undolevels=3000
endif

if has('cindent')
  set cinoptions=l1,g0,c1,(s,us,U1,m1,j1
endif

" don't show trailing in insert mode
" when saving, strip trailing white spaces
autocmd vimrc InsertEnter * setlocal listchars-=trail:-
autocmd vimrc InsertLeave * setlocal listchars+=trail:-
autocmd vimrc BufWritePre * call <SID>strip_trailing_white()

" annoying ftplugins
if v:version > 703 || v:version == 703 && has('patch541')
  autocmd vimrc FileType * setlocal formatoptions=croqnlj
else
  autocmd vimrc FileType * setlocal formatoptions=croqnl
endif

autocmd vimrc FileType * call <SID>single_line_comment()

" keep viminfo file inside
let &viminfo = '''50,<100,s10,h,n' . s:vim_dir . '/viminfo'

" it is useful, but for various security reasons...
set nomodeline

" for faster macros
set lazyredraw

" key bindings

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

" operator surround
nmap <silent>sa <Plug>(operator-surround-append)
nmap <silent>sd <Plug>(operator-surround-delete)
nmap <silent>sr <Plug>(operator-surround-replace)
vmap <silent>sa <Plug>(operator-surround-append)
vmap <silent>sd <Plug>(operator-surround-delete)
vmap <silent>sr <Plug>(operator-surround-replace)

" commands

command! -nargs=1 I call <SID>set_indent_width('<args>')
