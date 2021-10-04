-- $HOME/.config/nvim/init.lua

-- ┏┓┓┳━┓┏━┓┓ ┳o┏┏┓
-- ┃┃┃┣━ ┃ ┃┃┏┛┃┃┃┃
-- ┛┗┛┻━┛┛━┛┗┛ ┛┛ ┛

-- GitHub:       https://github.com/xcession/dotfiles
-- Maintainer:   Пэйнт (Tharawut Paripaiboon)

-- Leader key
vim.g.mapleader = " "

vim.cmd("source $HOME/.config/nvim/vim-plug/plugins.vim")
vim.cmd("source $HOME/.config/nvim/settings.vim")
vim.cmd("source $HOME/.config/nvim/mappings.vim")
vim.cmd("source $HOME/.config/nvim/functions.vim")

-- vim:fileencoding=utf-8:ft=lua:foldmethod=marker
