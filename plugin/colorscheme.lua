-- Colorschemes other than the default colorscheme looks bad when the terminal
-- does not support truecolor
if not vim.g.has_gui then
  if vim.g.has_ui then
    vim.cmd.colorscheme('default')
  end
  return
end

vim.go.bg = 'dark'

vim.cmd.colorscheme({
  args = { 'catppuccin' },
  mods = { emsg_silent = true },
})
