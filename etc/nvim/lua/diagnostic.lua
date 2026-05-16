vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  virtual_lines = false,
  signs = false,
  float = {
    border = 'single',
    source = 'if_many',
    header = '',
  },
})

vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.open_float()
end)
