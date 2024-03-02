local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local plugins_path = vim.fn.stdpath("config") .. "/nvim/plugins"

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

vim.opt.rtp:prepend(lazypath)
require("config.tabulation")
require("lazy").setup("plugins")
