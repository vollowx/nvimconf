local o = vim.opt
local g = vim.g

-- stylua: ignore start
o.cursorlineopt  = 'number'
o.cursorline     = true
o.foldlevelstart = 99
o.foldtext       = ''
o.helpheight     = 10
o.showmode       = false
o.laststatus     = 3
o.cmdheight      = 0
o.mousemoveevent = true
o.number         = true
o.ruler          = true
o.pumheight      = 16
o.scrolloff      = 4
o.sidescrolloff  = 8
o.signcolumn     = 'yes:1'
o.splitright     = true
o.splitbelow     = true
o.swapfile       = false
o.undofile       = true
o.updatetime     = 100
o.wrap           = false
o.linebreak      = true
o.breakindent    = true
o.smoothscroll   = true
o.ignorecase     = true
o.smartcase      = true
o.conceallevel   = 2
o.softtabstop    = 2
o.shiftwidth     = 2
o.expandtab      = true
o.autoindent     = true
o.autowriteall   = true
o.virtualedit    = 'block'
o.completeopt    = 'menuone'
o.jumpoptions    = 'stack,view'
-- stylua: ignore end

o.backup = true
o.backupdir:remove('.')

o.clipboard:append('unnamedplus')

o.diffopt:append({
  'algorithm:histogram',
  'indent-heuristic',
})

o.gcr = {
  'i-c-ci-ve:blinkoff500-blinkon500-block-TermCursor',
  'n-v:block-Curosr/lCursor',
  'o:hor50-Curosr/lCursor',
  'r-cr:hor20-Curosr/lCursor',
}

o.list = true
o.listchars = {
  tab = '→ ',
  trail = '·',
}
o.fillchars = {
  fold = ' ',
  foldsep = ' ',
  eob = ' ',
}

if g.has_gui then
  o.listchars:append({ nbsp = '·' })
  o.fillchars:append({
    foldopen = '',
    foldclose = '',
    diff = '╱',
  })
end

-- stylua: ignore start
g.loaded_gzip            = 1
g.loaded_tar             = 1
g.loaded_tarPlugin       = 1
g.loaded_zip             = 1
g.loaded_zipPlugin       = 1
g.loaded_getscript       = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball         = 1
g.loaded_vimballPlugin   = 1
g.loaded_2html_plugin    = 1
g.loaded_logiPat         = 1
g.loaded_rrhelper        = 1
g.loaded_netrwPlugin     = 1
-- stylua: ignore end

if vim.g.neovide then
  o.guifont = 'monospace:h12'
  g.neovide_padding_top = 16
  g.neovide_padding_bottom = 16
  g.neovide_padding_right = 16
  g.neovide_padding_left = 16
  g.neovide_floating_shadow = false
  g.neovide_scale_factor = 1.0
end
