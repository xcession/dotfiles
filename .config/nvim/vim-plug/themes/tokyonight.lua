-- Installation {{{
-- Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
-- }}}

-- Available styles:
-- storm
-- night
-- day
vim.g.tokyonight_style = "night"

vim.g.tokyonight_italic_functions = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]

-- vim:fileencoding=utf-8:ft=lua:foldmethod=marker
