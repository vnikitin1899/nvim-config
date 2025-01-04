local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }

-- TODO: keymaps
-- go to definition in new tab
-- preview definition
-- code actions
-- hover_doc
-- rename definition
-- usages preview and open

vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', 'gt', '<cmd>tab split | lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', 'qf', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', 'pd', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'rd', '<Cmd>Lspsaga rename<CR>', opts)
