" Light wrapper around mkdir.
function! s:mkdir(dir)
  execute 'silent !mkdir ' . (has('win32') ? '' : '-p') . ' ' .
        \ shellescape(a:dir, 1)
endfunction

" Follow XDG, unclutter editing directory. Neovim already does.
if has('win32')
  if exists('$LOCALAPPDATA')
    let s:data_path = $LOCALAPPDATA . '/Vim'
  else
    let s:data_path = $HOME . '/AppData/Local/Vim'
  endif
else
  if exists('$XDG_DATA_HOME')
    let s:data_path = $XDG_DATA_HOME . '/vim'
  else
    let s:data_path = $HOME . '/.local/share/vim'
  endif
endif

let g:plug_path = s:data_path . '/plugged'
execute 'source ' . expand('<sfile>:p:h') . '/common.vim'
unlet g:plug_path

" Undo files.
let s:undo_path = s:data_path . '/undo'
if has('persistent_undo')
  call s:mkdir(s:undo_path)
  let &undodir = s:undo_path
endif
unlet s:undo_path

" Swaps.
let s:swap_path = s:data_path . '/swap'
call s:mkdir(s:swap_path)
let &directory = s:swap_path . '//,.'
unlet s:swap_path

" Viminfo.
let &viminfo = &viminfo . ',n' . s:data_path . '/info'

delfunction s:mkdir
unlet s:data_path
