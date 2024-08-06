---@param keys string
local function feedkeys(keys)
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes(keys, true, false, true),
    'n',
    true
  )
end

local function pumvisible()
  return tonumber(vim.fn.pumvisible()) ~= 0
end

local function setup_lsp_compl(bufnr, client_id)
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
  vim.lsp.completion.enable(true, client_id, bufnr, { autotrigger = true })
end

local function setup_keymaps(bufnr)
  vim.keymap.set('i', '<CR>', function()
    return pumvisible() and '<C-y>' or '<CR>'
  end, { expr = true, buffer = bufnr })

  vim.keymap.set('i', '/', function()
    return pumvisible() and '<C-e>' or '/'
  end, { expr = true, buffer = bufnr })

  vim.keymap.set('i', '<C-n>', function()
    if pumvisible() then
      feedkeys('<C-n>')
    else
      if next(vim.lsp.get_clients({ bufnr = 0 })) then
        vim.lsp.completion.trigger()
      else
        if vim.bo.omnifunc == '' then
          feedkeys('<C-x><C-n>')
        else
          feedkeys('<C-x><C-o>')
        end
      end
    end
  end, { buffer = bufnr })

  vim.keymap.set('i', '<C-u>', '<C-x><C-n>', { buffer = bufnr })

  vim.keymap.set({ 'i', 's' }, '<Tab>', function()
    local copilot = require('copilot.suggestion')

    if copilot.is_visible() then
      copilot.accept()
    elseif pumvisible() then
      feedkeys('<C-n>')
    elseif vim.snippet.active({ direction = 1 }) then
      vim.snippet.jump(1)
    else
      feedkeys('<Tab>')
    end
  end, { buffer = bufnr })
  vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
    if pumvisible() then
      feedkeys('<C-p>')
    elseif vim.snippet.active({ direction = -1 }) then
      vim.snippet.jump(-1)
    else
      feedkeys('<S-Tab>')
    end
  end, { buffer = bufnr })

  vim.keymap.set('s', '<BS>', '<C-o>s', { buffer = bufnr })
end

---@return nil
local function setup(bufnr, client_id)
  if
    not vim.lsp
      .get_client_by_id(client_id)
      .supports_method('textDocument/completion')
  then
    return
  end
  setup_lsp_compl(bufnr, client_id)
  setup_keymaps(bufnr)
end

return { setup = setup }
