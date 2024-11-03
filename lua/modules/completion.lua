return {
  {
    'saghen/blink.cmp',
    lazy = false,
    dependencies = 'rafamadriz/friendly-snippets',
    version = 'v0.*',
    opts = {
      keymap = 'default',
      nerd_font_variant = 'mono',
      accept = { auto_brackets = { enabled = true } },
      trigger = { signature_help = { enabled = true } },
      kind_icons = icons.kinds,
    },
  },

  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
  },

  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = load_pkg('copilot'),
  },
}
