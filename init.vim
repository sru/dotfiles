if !empty(glob(stdpath('config') . '/autoload/plug.vim'))
  let g:plug_path = stdpath('data') . '/plugged'
endif
execute 'source ' . stdpath('config') . '/common.vim'
unlet! g:plug_path

" Remove 'cw' bug from remnants of Vi.
if &cpoptions =~# '_'
  set cpoptions-=_
endif
