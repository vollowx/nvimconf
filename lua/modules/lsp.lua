return {
  {
    'Wansmer/symbol-usage.nvim',
    event = 'LspAttach',
    config = load_pkg('symbol-usage'),
  },

  -- TODO: Configure this in jsonls
  { 'b0o/schemastore.nvim' },
}
