-- Show global statusline.
vim.o.laststatus = 3

vim.o.cmdheight = 1

vim.o.ruler = false
vim.o.showcmd = true
vim.o.showcmdloc = "last"
vim.o.showmode = false

local mode_map = {
  ["n"]     = "N",
  ["no"]    = "O",
  ["nov"]   = "O",
  ["noV"]   = "O",
  ["no\22"] = "O",
  ["niI"]   = "N",
  ["niR"]   = "N",
  ["niV"]   = "N",
  ["nt"]    = "N",
  ["ntT"]   = "N",
  ["v"]     = "V",
  ["vs"]    = "V",
  ["V"]     = "V",
  ["Vs"]    = "V",
  ["\22"]   = "V",
  ["\22s"]  = "V",
  ["s"]     = "S",
  ["S"]     = "S",
  ["\19"]   = "S",
  ["i"]     = "I",
  ["ic"]    = "I",
  ["ix"]    = "I",
  ["R"]     = "R",
  ["Rc"]    = "R",
  ["Rx"]    = "R",
  ["Rv"]    = "R",
  ["Rvc"]   = "R",
  ["Rvx"]   = "R",
  ["c"]     = "C",
  ["cv"]    = "C",
  ["ce"]    = "C",
  ["r"]     = "?",
  ["rm"]    = "?",
  ["r?"]    = "?",
  ["!"]     = "!",
  ["t"]     = "!",
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
  if reg == "" then return "  " end
  return "@" .. reg
end

vim.o.statusline = " %{%v:lua.statusline_mode()%} %-5S %{%v:lua.statusline_macro()%}%=%f %m%r%=%5l:%-3v %3p%% "
