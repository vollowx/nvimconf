local ts = require('nvim-treesitter')

---@param buf integer
---@return nil
local function enable_ts_folding(buf)
  -- Treesitter folding is extremely slow in large files,
  -- making typing and undo lag as hell
  if not vim.api.nvim_buf_is_valid(buf) or vim.b[buf].bigfile then
    return
  end
  vim.api.nvim_buf_call(buf, function()
    local o = vim.opt_local
    local fdm = o.fdm:get() ---@diagnostic disable-line: undefined-field
    local fde = o.fde:get() ---@diagnostic disable-line: undefined-field
    o.fdm = fdm == 'manual' and 'expr' or fdm
    o.fde = fde == '0' and 'nvim_treesitter#foldexpr()' or fde
    o.indentexpr = 'v.lua:require"nvim-treesitter".indentexpr()'
  end)
end

enable_ts_folding(0)

-- Set treesitter folds
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('TSFolds', {}),
  callback = function(info)
    enable_ts_folding(info.buf)
  end,
})

ts.setup({
  auto_install = false,
  sync_install = false,
  ignore_install = { 'org' },
  ensure_installed = {
    'c',
    'lua',
    'vim',
    'bash',
    'query',
    'python',
    'vimdoc',
    'markdown',
    'markdown_inline',

    'cpp',
    'css',
    'csv',
    'nix',
    'zig',
    'kdl',
    'ini',
    'fish',
    'rust',
    'make',
    'json',
    'yaml',
    'toml',
    'html',
    'javascript',
    'typescript',

    'gitcommit',
    'gitignore',
  },
})
