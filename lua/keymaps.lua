local map = vim.api.nvim_set_keymap
local keyset = vim.keymap.set

local options = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = "\\"

-- Shift + tab switch buffers
map('n', '<S-Tab>', ':bnext<CR>', options) -- TODO: change this

-- Nvim tree toggle
keyset('n', '<leader>e', ':NvimTreeToggle<CR>', options)

-- Vimtex
keyset("n", "<leader>q", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")
keyset("n", "<leader>l", ":VimtexCompile<cr>")

-- Copilot
keyset("n", "<leader>ce", ":Copilot enable<cr>")
keyset("n", "<leader>cd", ":Copilot disable<cr>")
