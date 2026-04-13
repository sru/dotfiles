-- Show global statusline.
vim.o.laststatus = 3

vim.o.cmdheight = 0
require('vim._core.ui2').enable({
  enable = true, -- Whether to enable or disable the UI.
  msg = {
    targets = {
      [''] = 'msg',
      empty = 'cmd',
      bufwrite = 'msg',
      confirm = 'cmd',
      emsg = 'pager',
      echo = 'msg',
      echomsg = 'msg',
      echoerr = 'pager',
      completion = 'cmd',
      list_cmd = 'pager',
      lua_error = 'pager',
      lua_print = 'msg',
      progress = 'pager',
      rpc_error = 'pager',
      quickfix = 'msg',
      search_cmd = 'cmd',
      search_count = 'cmd',
      shell_cmd = 'pager',
      shell_err = 'pager',
      shell_out = 'pager',
      shell_ret = 'msg',
      undo = 'msg',
      verbose = 'pager',
      wildlist = 'cmd',
      wmsg = 'msg',
      typed_cmd = 'cmd',
    },
    cmd = {
      height = 0.5
    },
    dialog = {
      height = 0.5,
    },
    msg = {
      height = 0.5,
      timeout = 4000,
    },
    pager = {
      height = 1,
    },
  },
})

-- Since cmdheight is set to 0, these have no effect.
vim.o.showcmd = false
vim.o.ruler = false
vim.o.showmode = false

local mode_map = {
  ['n']     = 'N',
  ['no']    = 'O',
  ['nov']   = 'O',
  ['noV']   = 'O',
  ['no\22'] = 'O',
  ['niI']   = 'N',
  ['niR']   = 'N',
  ['niV']   = 'N',
  ['nt']    = 'N',
  ['ntT']   = 'N',
  ['v']     = 'V',
  ['vs']    = 'V',
  ['V']     = 'V',
  ['Vs']    = 'V',
  ['\22']   = 'V',
  ['\22s']  = 'V',
  ['s']     = 'S',
  ['S']     = 'S',
  ['\19']   = 'S',
  ['i']     = 'I',
  ['ic']    = 'I',
  ['ix']    = 'I',
  ['R']     = 'R',
  ['Rc']    = 'R',
  ['Rx']    = 'R',
  ['Rv']    = 'R',
  ['Rvc']   = 'R',
  ['Rvx']   = 'R',
  ['c']     = 'C',
  ['cv']    = 'C',
  ['ce']    = 'C',
  ['r']     = '?',
  ['rm']    = '?',
  ['r?']    = '?',
  ['!']     = '!',
  ['t']     = '!',
}

statusline_mode = function()
  local mode_code = vim.api.nvim_get_mode().mode
  if mode_map[mode_code] == nil then
    return mode_code
  end
  return mode_map[mode_code]
end

statusline_macro = function()
  local reg = vim.fn.reg_recording()
  if reg == '' then return '  ' end
  return '@' .. reg
end

vim.o.statusline = ' %{%v:lua.statusline_mode()%} %{%v:lua.statusline_macro()%}%=%f %m%r%=%5l:%-3v %3p%% '
