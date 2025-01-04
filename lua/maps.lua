local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

keymap.set('n', 'dw', 'vb"_d')

keymap.set('n', '<C-a>', 'gg<S-v>G')

keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

keymap.set('n', '<Space>', '<C-w>w')

keymap.set('n', 's<left>', '<C-w>h')
keymap.set('n', 's<right>', '<C-w>l')
keymap.set('n', 's<down>', '<C-w>j')
keymap.set('n', 's<up>', '<C-w>k')


keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sl', '<C-w>l')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sk', '<C-w>k')

keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- nvim tree
keymap.set('n', 'nto', '<Cmd>NvimTreeOpen<CR>')
keymap.set('n', 'ntq', '<Cmd>NvimTreeClose<CR>')
