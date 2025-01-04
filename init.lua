require('base')
require('plugins')
require('highlights')
require('maps')
require('autoclose')

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local has = function(x) 
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then 
  require('macos')
end

if is_win then
  require('windows')
end

require('catppuccin').setup {
  flavour = 'mocha',
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" }
  }
}

vim.cmd[[colorscheme catppuccin]]

