-- Declare autocmd group and remove all existing autocmds for the group.
local autocmd_id = vim.api.nvim_create_augroup('vimrc', {
  clear = true
})

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

vim.cmd.colorscheme('seon')
vim.cmd('filetype indent off')

vim.g.netrw_home = vim.fn.stdpath('state')

vim.o.autoindent = true
vim.o.autoread = true
vim.o.backspace = 'indent,eol,start'
vim.o.completeopt = 'menu,menuone,longest'
vim.o.confirm = false
vim.o.cpoptions = vim.o.cpoptions:gsub('_', '')
vim.o.encoding = 'utf-8'
vim.o.expandtab = true
vim.o.fileformats = 'unix,dos'
vim.o.formatoptions = 'ro/qj'
vim.o.hidden = true
vim.o.history = 10000
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.joinspaces = false
vim.o.laststatus = 3
vim.o.lazyredraw = true
vim.o.list = true
vim.o.listchars = 'tab:>-,trail:-'
vim.o.modeline = false
vim.o.number = false
vim.o.ruler = false
vim.o.shiftwidth = 2
vim.o.shortmess = 'atI'
vim.o.showcmd = true
vim.o.showmatch = false
vim.o.showmode = true
vim.o.smartcase = true
vim.o.softtabstop = 2
vim.o.statusline = ' %f %y%m%r%=L%l:%c '
vim.o.textwidth = 80
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.wildmenu = true
vim.o.wildmode = 'list:longest'

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
