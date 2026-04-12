local hide_trailing_space = function()
  local new_listchars = {}
  for listchar in vim.o.listchars:gmatch('([^,]+)') do
    if listchar ~= 'trail:-' then
      table.insert(new_listchars, listchar)
    end
  end
  vim.o.listchars = table.concat(new_listchars, ',')
end

local show_trailing_space = function()
  for listchar in vim.o.listchars:gmatch('([^,]+)') do
    if listchar == 'trail:-' then
      return
    end
  end
  vim.o.listchars = vim.o.listchars .. ',trail:-'
end

local strip_trailing_whitespaces = function()
  local saved_view = vim.fn.winsaveview()
  vim.cmd('silent! keepjumps keeppatterns %s/\\s\\+$//')
  vim.fn.winrestview(saved_view)
end

statusline_macro = function()
  local reg = vim.fn.reg_recording()
  if reg == '' then return '' end
  return '%#DiagnosticError# * REC @' .. reg .. '%#StatusLine#'
end

vim.o.cmdheight = 0
vim.o.pumborder = 'single'
vim.o.winborder = 'single'
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

vim.g.netrw_home = vim.fn.stdpath('state')

vim.o.autoindent = true
vim.o.autoread = true
vim.o.background = 'light'
vim.o.backspace = 'indent,eol,start'
vim.o.completeopt = 'menu,menuone,longest'
vim.o.confirm = false
vim.o.cpoptions = vim.o.cpoptions:gsub('_', '')
vim.o.encoding = 'utf-8'
vim.o.expandtab = true
vim.o.formatoptions = 'ro/qj'
vim.o.hidden = true
vim.o.history = 10000
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.joinspaces = true
vim.o.laststatus = 3
vim.o.lazyredraw = true
vim.o.list = true
vim.o.listchars = 'tab:>-,extends:>,precedes:<,trail:-'
vim.o.modeline = false
vim.o.number = false
vim.o.ruler = false
vim.o.shiftwidth = 2
vim.o.shortmess = 'atToOICqF'
vim.o.showcmd = true
vim.o.showmatch = false
vim.o.showmode = true
vim.o.smartcase = true
vim.o.softtabstop = -1
vim.o.statusline = ' %f %y%m%r%{%v:lua.statusline_macro()%}%=L%l:%c '
vim.o.textwidth = 80
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.wildmenu = true
vim.o.wildmode = 'list:longest'
vim.o.wrap = false

vim.cmd.colorscheme('seon')
vim.cmd('filetype indent off')

-- Declare autocmd group and remove all existing autocmds for the group.
local autocmd_id = vim.api.nvim_create_augroup('vimrc', {
  clear = true
})

vim.api.nvim_create_autocmd('InsertEnter', {
  group = autocmd_id,
  desc = 'Hide trailing whitespace when entering insert mode.',
  callback = hide_trailing_space,
})

vim.api.nvim_create_autocmd('InsertLeave', {
  group = autocmd_id,
  desc = 'Show trailing whitespace when leaving insert mode.',
  callback = show_trailing_space,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  group = autocmd_id,
  desc = 'Remove trailing whitespaces when saving.',
  callback = strip_trailing_whitespaces,
})

vim.api.nvim_create_autocmd('FileType', {
  group = autocmd_id,
  desc = 'Override formatoptions.',
  callback = function() vim.o.formatoptions = 'ro/qj' end,
})

vim.keymap.set('n', 'Y', 'y$')
