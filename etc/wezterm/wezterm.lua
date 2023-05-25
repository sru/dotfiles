local wezterm = require 'wezterm'
local config = {}

config.color_schemes = {
  ['Seon'] = {
    foreground = '#000000',
    background = '#ffffff',
    cursor_fg = '#ffffff',
    cursor_bg = '#000000',
    cursor_border = '#000000',
    selection_fg = '#ffffff',
    selection_bg = '#ababab',
    scrollbar_thumb = '#ababab',
    split = '#ababab',
    ansi = {
      '#000000',
      '#ce2029',
      '#007d32',
      '#ab9100',
      '#1c39bb',
      '#663399',
      '#ff7900',
      '#555555',
    },
    brights = {
      '#ababab',
      '#efb5b8',
      '#abd4bb',
      '#ffd800',
      '#b4bee9',
      '#cdbcdd',
      '#ffd3ab',
      '#ffffff',
    },
  },
}

config.color_scheme = 'Seon'
config.font = wezterm.font 'Cascadia Mono'

config.bold_brightens_ansi_colors = 'No'
config.default_prog = { 'pwsh' }
config.enable_tab_bar = false
config.initial_cols = 120
config.initial_rows = 48

return config
