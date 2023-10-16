-- Settings
vim.cmd [[
    set nowrap
    set tabstop=4
    set shiftwidth=4
    set expandtab
    syntax on
]]

-- Colorscheme
-- vim.cmd.colorscheme('tokyonight')
pcall(vim.cmd.colorscheme,'kanagawa')
-- Numbers column
vim.o.number = true
vim.o.relativenumber = true
