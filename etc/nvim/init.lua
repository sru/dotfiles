vim.pack.add({
  'https://github.com/stevearc/oil.nvim.git',
})
require('oil').setup()

vim.o.pumborder = 'single'
vim.o.winborder = 'single'

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
vim.o.lazyredraw = true
vim.o.list = true
vim.o.listchars = 'tab:>-,extends:>,precedes:<,trail:-'
vim.o.modeline = false
vim.o.number = false
vim.o.shiftwidth = 2
vim.o.shortmess = 'atToOICqF'
vim.o.showmatch = false
vim.o.smartcase = true
vim.o.softtabstop = -1
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

vim.api.nvim_create_autocmd('FileType', {
  group = autocmd_id,
  desc = 'Override formatoptions.',
  callback = function() vim.o.formatoptions = 'ro/qj' end,
})

vim.keymap.set('n', 'Y', 'y$')

require('diagnostic')
require('statusline')
require('trailing-whitespace')
