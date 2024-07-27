vim.loader.enable()

_G.settings = {
  ui = {
    border = 'solid',
    border_preview = 'solid',
    border_input = 'rounded',
  },
}

-- stylua: ignore start
_G.icons                = {
  diagnostics           = {
    DiagnosticSignError = '󰅚 ',
    DiagnosticSignHint  = '󰌶 ',
    DiagnosticSignInfo  = '󰋽 ',
    DiagnosticSignOk    = '󰄬 ',
    DiagnosticSignWarn  = '󰀪 ',
  },
  kinds                 = {
    Array               = '󰅪 ',
    Boolean             = ' ',
    BreakStatement      = '󰙧 ',
    Call                = '󰃷 ',
    CaseStatement       = '󱃙 ',
    Class               = ' ',
    Color               = '󰏘 ',
    Constant            = '󰏿 ',
    Constructor         = '󰒓 ',
    ContinueStatement   = '→ ',
    Declaration         = '󰙠 ',
    Delete              = '󰩺 ',
    DoStatement         = '󰑖 ',
    Enum                = ' ',
    EnumMember          = ' ',
    Event               = ' ',
    Field               = ' ',
    File                = '󰈔 ',
    Folder              = '󰉋 ',
    ForStatement        = '󰑖 ',
    Format              = '󰗈 ',
    Function            = '󰊕 ',
    H1Marker            = '󰉫 ',
    H2Marker            = '󰉬 ',
    H3Marker            = '󰉭 ',
    H4Marker            = '󰉮 ',
    H5Marker            = '󰉯 ',
    H6Marker            = '󰉰 ',
    Identifier          = '󰀫 ',
    IfStatement         = '󰇉 ',
    Interface           = ' ',
    Keyboard            = '󰥻 ',
    Keyword             = '󰌋 ',
    List                = '󰅪 ',
    Log                 = '󰦪 ',
    Lsp                 = ' ',
    Macro               = '󰁌 ',
    MarkdownH1          = '󰉫 ',
    MarkdownH2          = '󰉬 ',
    MarkdownH3          = '󰉭 ',
    MarkdownH4          = '󰉮 ',
    MarkdownH5          = '󰉯 ',
    MarkdownH6          = '󰉰 ',
    Method              = '󰆧 ',
    Module              = '󰏗 ',
    Namespace           = '󰅩 ',
    Null                = '󰢤 ',
    Number              = '󰎠 ',
    Object              = '󰅩 ',
    Operator            = '󰆕 ',
    Package             = '󰆦 ',
    Pair                = '󰅪 ',
    Property            = ' ',
    Reference           = '󰦾 ',
    Regex               = ' ',
    Repeat              = '󰑖 ',
    Scope               = '󰅩 ',
    Snippet             = '󰩫 ',
    Specifier           = '󰦪 ',
    Statement           = '󰅩 ',
    String              = '󰉾 ',
    Struct              = ' ',
    SwitchStatement     = '󰺟 ',
    Terminal            = ' ',
    Text                = ' ',
    Type                = ' ',
    TypeParameter       = '󰆩 ',
    Unit                = ' ',
    Value               = '󰎠 ',
    Variable            = '󰀫 ',
    WhileStatement      = '󰑖 ',
  },
  ft                    = {
    Config              = '󰒓 ',
    Lua                 = ' ',
  },
  ui                    = {
    AngleDown           = ' ',
    AngleLeft           = ' ',
    AngleRight          = ' ',
    AngleUp             = ' ',
    ArrowDown           = '↓ ',
    ArrowLeft           = '← ',
    ArrowRight          = '→ ',
    ArrowUp             = '↑ ',
    Branch              = ' ',
    Calculator          = '󰃬 ',
    CircleFilled        = '● ',
    CircleOutline       = '○ ',
    Cmd                 = '󰞷 ',
    Cross               = '󰅖 ',
    Ok                  = '󰄬 ',
    Diamond             = '◆ ',
    Dot                 = '• ',
    DotLarge            = ' ',
    Ellipsis            = '… ',
    GitSignAdd          = '▍ ',
    GitSignChange       = '▍ ',
    GitSignChangedelete = '▍ ',
    GitSignDelete       = '▁ ',
    GitSignTopdelete    = '▔ ',
    GitSignUntracked    = '▍ ',
    Help                = '󰘥 ',
    Lazy                = '󰒲 ',
    Magnify             = '󰍉 ',
    Neovim              = ' ',
    Pin                 = '󰐃 ',
    Play                = '󰼛 ',
    TriangleDown        = '▼ ',
    TriangleLeft        = '◀ ',
    TriangleRight       = '▶ ',
    TriangleUp          = '▲ ',
  },
}

vim.g.has_ui = #vim.api.nvim_list_uis() > 0
vim.g.has_gui = vim.g.has_ui and (vim.env.DISPLAY ~= nil or vim.env.WAYLAND_DISPLAY ~= nil)

vim.keymap.set({ 'n', 'x' }, '<Space>', '<Ignore>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('core.options')
require('core.packages')

vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function ()
    require('core.autocmds')
    require('core.keymaps')
    require('core.commands')
  end
})
