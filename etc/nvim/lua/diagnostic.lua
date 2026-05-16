vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  virtual_lines = false,
  signs = false,
  float = {
    border = 'single',
    source = 'if_many',
    header = '',
    focusable = false,
  },
})

vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.open_float()
end)
