return {
  {
    'romainl/vim-cool',
    lazy = false,
  },

  {
    'DanilaMihailov/beacon.nvim',
    event = { 'CursorMoved', 'WinEnter', 'FocusGained' },
    config = load_pkg('beacon'),
  },

  {
    'brenoprata10/nvim-highlight-colors',
    enabled = vim.g.has_gui,
    event = 'VeryLazy',
    config = load_pkg('highlight-colors'),
  },

  {
    'tzachar/local-highlight.nvim',
    event = 'VeryLazy',
    config = load_pkg('local-highlight'),
  },

  {
    'Aasim-A/scrollEOF.nvim',
    event = { 'CursorMoved', 'WinScrolled' },
    config = load_pkg('scroll-eof'),
  },
}
