local map = vim.keymap.set

-- stylua: ignore start
map({ 'n', 'x' }, 'j', 'v:count ? "j" : "gj"', { expr = true })
map({ 'n', 'x' }, 'k', 'v:count ? "k" : "gk"', { expr = true })
map({ 'n', 'x' }, '<Down>', 'v:count ? "<Down>" : "g<Down>"', { expr = true, replace_keycodes = false })
map({ 'n', 'x' }, '<Up>',   'v:count ? "<Up>"   : "g<Up>"',   { expr = true, replace_keycodes = false })
map({ 'i' }, '<Down>', '<Cmd>norm! g<Down><CR>')
map({ 'i' }, '<Up>',   '<Cmd>norm! g<Up><CR>')
-- stylua: ignore end

map({ 'i', 'c' }, '<M-Backspace>', '<C-w>')

map('n', '<Esc>', '<Cmd>noh<CR>')
map('n', 'q', '<Cmd>fclose<CR>')

-- stylua: ignore start
map({ 'n', 'x' }, '<M-h>', '<C-w>h')
map({ 'n', 'x' }, '<M-j>', '<C-w>j')
map({ 'n', 'x' }, '<M-k>', '<C-w>k')
map({ 'n', 'x' }, '<M-l>', '<C-w>l')
map({ 'n', 'x' }, '<M-n>', '<C-w>n')
map({ 'n', 'x' }, '<M-q>', '<C-w>q')
map({ 'n', 'x' }, '<M-s>', '<C-w>s')
map({ 'n', 'x' }, '<M-v>', '<C-w>v')
map({ 'n', 'x' }, '<M-x>', '<C-w>x')

map('t', '<C-^>', '<Cmd>b#<CR>',       { replace_keycodes = false })
map('t', '<C-6>', '<Cmd>b#<CR>',       { replace_keycodes = false })
map('t', '<Esc>', '<Cmd>stopi<CR>',    { replace_keycodes = false })
map('t', '<M-h>', '<Cmd>wincmd h<CR>', { replace_keycodes = false })
map('t', '<M-j>', '<Cmd>wincmd j<CR>', { replace_keycodes = false })
map('t', '<M-k>', '<Cmd>wincmd k<CR>', { replace_keycodes = false })
map('t', '<M-l>', '<Cmd>wincmd l<CR>', { replace_keycodes = false })
-- stylua: ignore end
