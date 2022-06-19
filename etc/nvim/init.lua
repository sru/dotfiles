-- Declare autocmd group and remove all existing autocmds for the group.
local autocmd_id = vim.api.nvim_create_augroup('vimrc', {
  clear = true
})

local strip_trailing_whitespaces = function()
  local saved_view = vim.fn.winsaveview()
  vim.cmd('silent! keepjumps keeppatterns %s/\\s\\+$//')
  vim.fn.winrestview(saved_view)
end

-- Follow XDG.
local data_path
if vim.env.XDG_STATE_HOME ~= nil then
  data_path = vim.env.XDG_STATE_HOME .. '/nvim'
elseif vim.fn.has('win32') ~= 1 then
  data_path = vim.env.HOME .. '/.local/state/nvim'
elseif vim.env.LOCALAPPDATA ~= nil then
  data_path = vim.env.LOCALAPPDATA .. '/nvim-data'
else
  data_path = vim.env.HOME .. '/AppData/Local/nvim-data'
end

local swap_path = data_path .. '/swap'
local undo_path = data_path .. '/undo'

vim.cmd [[
  colorscheme seon

  syntax on
  filetype on
  filetype indent off
  filetype plugin on
]]

vim.g.netrw_home = data_path

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.backspace = {'indent', 'eol', 'start'}
vim.opt.complete:remove('i')
vim.opt.completeopt = {'menu', 'menuone', 'longest'}
vim.opt.confirm = false
vim.opt.cpoptions:remove('_')
vim.opt.directory = {swap_path .. '//', '.'}
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileformats = {'unix', 'dos'}
vim.opt.hidden = true
vim.opt.history = 10000
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.joinspaces = false
vim.opt.laststatus = 0
vim.opt.lazyredraw = true
vim.opt.list = true
vim.opt.listchars = {tab = '>-', trail = '-'}
vim.opt.modeline = false
vim.opt.number = false
vim.opt.ruler = false
vim.opt.shadafile = data_path .. '/shada'
vim.opt.shiftwidth = 2
vim.opt.shortmess = 'atI'
vim.opt.showcmd = true
vim.opt.showmatch = false
vim.opt.showmode = true
vim.opt.smartcase = true
vim.opt.softtabstop = 2
vim.opt.statusline = "%{repeat('-',winwidth(0))}"
vim.opt.textwidth = 80
vim.opt.undodir = undo_path
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'

vim.api.nvim_create_autocmd('InsertEnter', {
  group = autocmd_id,
  desc = 'Hide trailing whitespace when entering insert mode.',
  callback = function() vim.opt.listchars:remove({trail = '-'}) end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
  group = autocmd_id,
  desc = 'Show trailing whitespace when leaving insert mode.',
  callback = function() vim.opt.listchars:append({trail = '-'}) end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  group = autocmd_id,
  desc = 'Remove trailing whitespaces when saving.',
  callback = function() strip_trailing_whitespaces() end,
})

vim.keymap.set('n', 'Y', 'y$')
