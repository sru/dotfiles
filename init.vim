let g:plug_path = stdpath('data') . '/plugged'
execute 'source ' . stdpath('config') . '/common.vim'
unlet g:plug_path

" Remove 'cw' bug from remnants of Vi.
if &cpoptions =~# '_'
  set cpoptions-=_
endif
