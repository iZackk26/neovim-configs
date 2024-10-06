local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local plugins_path = vim.fn.stdpath("config") .. "/nvim/plugins"

-- Establecer la tecla <leader> como "\"
vim.g.mapleader = '\\'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.filetype.add({
  extension = {
    typst = "typst",
  },
})

-- Asocia archivos .pl a Prolog en lugar de Perl
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*.pl",
    command = "set filetype=prolog"
})

vim.opt.rtp:prepend(lazypath)
require("config.tabulation")
require("lazy").setup("plugins")
