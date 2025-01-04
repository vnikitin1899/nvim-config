local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
  options = {
    theme = 'catppuccin-mocha',
    icons_enabled = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode'},
    lualine_b = { 'branch', 'diff' },
    lualine_c = { { 'filename', file_status = true, path = 1 } },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { {
      'diagnostics',
      -- Displays diagnostics for the defined severity types
      sections = { 'error', 'warn', 'info', 'hint' },

      diagnostics_color = {
        -- Same values as the general color option can be used here.
        error = 'DiagnosticError', -- Changes diagnostics' error color.
        warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
        info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
        hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
      },
      symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
      colored = true,           -- Displays diagnostics status in color if set to true.
      update_in_insert = false, -- Update diagnostics in insert mode.
      always_visible = true
    } },
    lualine_z = { 'location' }
  },
  inactive_sections = {
   lualine_a = {}, 
   lualine_b = {}, 
   lualine_c = {{
    'filename',
    file_status = true,
    path = 1,
   }},
   lualine_x = { 'location' },
   lualine_y = {},
   lualine_z = {},
  },
  tabline = {},
  extensions = { 'fugitive' }
}
