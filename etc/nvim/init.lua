vim.g.netrw_home = vim.fn.stdpath("state")

vim.o.background = "light"
vim.o.pumborder = "single"
vim.o.winborder = "single"
vim.o.list = true
vim.o.listchars = "tab:>-,extends:>,precedes:<,trail:-"
vim.o.number = false
vim.o.shortmess = "atToOICqF"
vim.o.showmatch = false
vim.o.wrap = false

vim.o.autoindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = -1

vim.o.encoding = "utf-8"
vim.o.autoread = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.o.confirm = false
vim.opt.cpoptions:remove({ "_" })
vim.o.formatoptions = "ro/qj"
vim.o.hidden = true
vim.o.history = 10000
vim.o.joinspaces = true

vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.smartcase = true

vim.o.modeline = false
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.wildmenu = true
vim.o.wildmode = "list:longest"

vim.cmd.colorscheme("seon")
vim.cmd("filetype indent off")

-- Declare autocmd group and remove all existing autocmds for the group.
local autocmd_id = vim.api.nvim_create_augroup("vimrc", {
  clear = true
})

vim.api.nvim_create_autocmd("FileType", {
  group = autocmd_id,
  desc = "Override formatoptions.",
  callback = function() vim.o.formatoptions = "ro/qj" end,
})

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

require("diagnostic")
require("statusline")
require("trailing-whitespace")

vim.pack.add({
  "https://github.com/nvim-mini/mini.surround",
  "https://github.com/stevearc/oil.nvim.git",
})
require("mini.surround").setup()
require("oil").setup()
