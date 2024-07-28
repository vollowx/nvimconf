-- lsp & diagnostic settings
vim.api.nvim_create_autocmd({ 'LspAttach', 'DiagnosticChanged' }, {
  once = true,
  desc = 'Apply lsp and diagnostic settings.',
  group = vim.api.nvim_create_augroup('LspDiagnosticSetup', {}),
  callback = function()
    require('plugin.lsp').setup()
    return true
  end,
})

-- statusline
vim.go.statusline = [[%!v:lua.require'plugin.statusline'.get()]]

-- term
vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('TermSetup', {}),
  callback = function(info)
    require('plugin.term').setup(info.buf)
  end,
})

-- completion
vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    require('plugin.completion')
  end,
})
