return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    build = ':TSUpdate',
    event = { 'BufRead', 'BufNewFile', 'VeryLazy' },
    config = load_pkg('treesitter', true),
    dependencies = {
      -- 'RRethy/nvim-treesitter-endwise',
      'windwp/nvim-ts-autotag',
    },
  },

  {
    'Wansmer/treesj',
    keys = {
      {
        'J',
        function()
          require('treesj').toggle()
        end,
      },
    },
  },

  {
    'Eandrju/cellular-automaton.nvim',
    cmd = 'CellularAutomaton',
  },
}
