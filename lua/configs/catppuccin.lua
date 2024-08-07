require('catppuccin').setup({
  term_colors = true,
  default_integrations = false,
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { 'italic' },
        hints = { 'italic' },
        warnings = { 'italic' },
        information = { 'italic' },
      },
      underlines = {
        errors = { 'undercurl' },
        hints = { 'undercurl' },
        warnings = { 'undercurl' },
        information = { 'undercurl' },
      },
      inlay_hints = { background = true },
    },
    beacon = true,
    cmp = true,
    gitsigns = true,
    headlines = true,
    indent_blankline = { enabled = true, scope_color = 'surface1' },
    markdown = true,
    mini = { enabled = true },
    semantic_tokens = true,
    telescope = { enabled = true, style = 'nvchad' },
  },
  styles = {
    comments = { 'italic' },
    conditionals = { 'italic' },
    functions = { 'italic' },
    keywords = { 'italic' },
    numbers = { 'bold' },
    types = { 'bold' },
  },
  highlight_overrides = {
    all = function(colors)
      return {
        FloatBorder = { bg = colors.mantle, fg = colors.mantle },
        CursorLineNr = { fg = colors.mauve, style = { 'bold' } },
        WinSeparator = { fg = colors.surface1 },
        CmpGhostText = { link = 'Comment' },
        Folded = { link = 'Comment' },

        GitSignsChange = { fg = colors.peach },
        GitSignsCurrentLineBlame = { link = 'Comment' },

        IblIndent = { fg = colors.surface0 },
        IblScope = { fg = colors.surface2 },

        FzfLuaNormal = { link = 'NormalFloat' },
        FzfLuaBorder = { link = 'FloatBorder' },
        FzfLuaTitle = { link = 'FloatTitle' },
        FzfLuaHeaderBind = { fg = colors.yellow },
        FzfLuaHeaderText = { fg = colors.peach },
        FzfLuaPathColNr = { fg = colors.blue },
        FzfLuaPathLineNr = { fg = colors.green },
        FzfLuaBufName = { fg = colors.mauve },
        FzfLuaBufNr = { fg = colors.yellow },
        FzfLuaBufFlagCur = { fg = colors.peach },
        FzfLuaBufFlagAlt = { fg = colors.blue },
        FzfLuaTabTitle = { fg = colors.sky },
        FzfLuaTabMarker = { fg = colors.yellow },
        FzfLuaLiveSym = { fg = colors.peach },
      }
    end,
  },
})
