" Declare autocmd group and remove all existing autcmds for the group.
augroup vimrc
  autocmd!
augroup END

" The vim directory.
if has('win32')
  let s:vim_dir = $HOME . '/vimfiles'
else
  let s:vim_dir = $HOME . '/.vim'
endif

" Check if vim-plug exists.
if !empty(globpath(&rtp, 'autoload/plug.vim'))
  " Suppress error about git not found.
  silent! call plug#begin(s:vim_dir . '/plugged')

  Plug 'tommcdo/vim-lion'
  Plug 'tpope/vim-commentary'
  Plug 'justinmk/vim-dirvish'
  Plug 'kana/vim-operator-user' | Plug 'rhysd/vim-operator-surround'

  call plug#end()
endif

filetype plugin indent on

colorscheme mico

if !exists('g:syntax_on')
  syntax enable
endif

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
  if v:version > 704 || v:version == 704 && has('patch155')
    silent! keeppatterns %s/\s\+$//
  else
    silent! %s/\s\+$//
    call histdel('/', -1)
    let @/ = histget('search', -1)
  endif
  call winrestview(l:winview)
endfunction

" vim-operator-surround
" Change the default block so that the pairs with spaces are detected first.
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

" vim-dirvish
let g:dirvish_relative_paths = 1

" Allow using backspace for everything in insert mode.
set backspace=indent,eol,start

" Don't show line numbers.
set nonumber

" Don't flicker cursor to show matches.
set noshowmatch

" Show current mode.
set showmode

" Show incomplete cmds.
set showcmd

" Display tabs and trailing spaces.
set list
set listchars=tab:>-,trail:-

set statusline=\ %f\ %y%m%r%=%l\ %3.c\  " :help 'statusline'
set laststatus=2

" Lots of histories.
set history=100

" File formats.
set fileformats=unix,dos
set encoding=utf-8

" Default indent settings.
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Text width for formatting.
set textwidth=80

" Tab completion wild options.
set wildmenu
set wildmode=list:longest

" Search.
set nohlsearch
set incsearch  " Find the next match as typing the search.
set ignorecase " Ignore case.
set smartcase  " Don't ignore case when capital letter is typed.

" c: Auto-wrap comments.
" r: Insert current comment leader when pressing enter in Insert mode.
" o: Insert current comment leader when o or O is pressed in Normal mode.
" q: Format comments with gq.
" n: Numbered list indent.
" l: Long lines are not broken in insert mode.
" j: Remove comment leader when joining.
set formatoptions=croqnl
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

" Only one space after sentence.
set nojoinspaces

" Hide buffers when not displayed.
set hidden

" Fail instead of asking dialog.
set noconfirm

" Abbreviate messages.
" a: Shorten bunch of stuff, see :h shortmess.
" t: Truncate file message if it's too long.
" I: Skip intro message.
set shortmess=atI

" When file is changed outside of vim, read it again.
set autoread

" Do not search included files; use i_CTRL-X_CTRL-I.
set complete-=i

" Option for complete popup.
set completeopt=menu,menuone,longest

" Persistent undo.
if has('persistent_undo')
  set undolevels=1000
endif

if has('cindent')
  set cinoptions=l1,g0,c1,(s,us,U1,m1,j1
endif

" It is useful, but for various security reasons...
set nomodeline

" For faster macros; Use CTRL-L to force redraw.
set lazyredraw

" No accidental beepings.
set visualbell

" Don't show trailing in insert mode.
autocmd vimrc InsertEnter * setlocal listchars-=trail:-
autocmd vimrc InsertLeave * setlocal listchars+=trail:-

" When saving, strip trailing white spaces.
autocmd vimrc BufWritePre * call <SID>strip_trailing_white()

" Annoying ftplugins.
if v:version > 703 || v:version == 703 && has('patch541')
  autocmd vimrc FileType * setlocal formatoptions=croqnlj
else
  autocmd vimrc FileType * setlocal formatoptions=croqnl
endif

" Make j and k move display lines only when count is not given.
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

" Previous and next buffers.
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>

" Previous and next quickfix.
nnoremap [q :cprevious<cr>
nnoremap ]q :cnext<cr>

" Make Y consistent with C and D.
nnoremap Y y$

" vim-operator-surround
nmap <silent> sa <Plug>(operator-surround-append)
nmap <silent> sd <Plug>(operator-surround-delete)
nmap <silent> sr <Plug>(operator-surround-replace)
xmap <silent> sa <Plug>(operator-surround-append)
xmap <silent> sd <Plug>(operator-surround-delete)
xmap <silent> sr <Plug>(operator-surround-replace)

command! -nargs=1 I call <SID>set_indent_width('<args>')
