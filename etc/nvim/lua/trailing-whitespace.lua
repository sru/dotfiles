local hide_trailing_space = function()
  vim.opt.listchars:remove { 'trail' }
end

local show_trailing_space = function()
  vim.opt.listchars:append { trail = '-' }
end

local strip_trailing_whitespaces = function()
  local saved_view = vim.fn.winsaveview()
  vim.cmd('silent! keepjumps keeppatterns %s/\\s\\+$//')
  vim.fn.winrestview(saved_view)
end

local autocmd_id = vim.api.nvim_create_augroup('init-trailing-whitespace', {
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
