return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    branch = 'feat/term-cursor',
    config = load_pkg('catppuccin'),
    priority = 1000,
  },

  { 'folke/tokyonight.nvim' },

  { 'rose-pine/neovim', name = 'rose-pine' },
}
