vim.cmd "packadd packer.nvim"

local packer = require("packer")

packer.init({
  git = {
    clone_timeout = 600, -- Timeout, in seconds, for git clones
  },
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
})

require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Themes
    use "projekt0n/github-nvim-theme"
    use 'doki-theme/doki-theme-vim'
    use 'folke/tokyonight.nvim'
    use 'sainnhe/gruvbox-material'
    use 'cocopon/iceberg.vim'
    use 'morhetz/gruvbox'
    use 'sainnhe/sonokai'
    use 'sainnhe/everforest'
    use 'sainnhe/edge'
    use 'olimorris/onedarkpro.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'zSnails/cityscape.nvim'
    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Web devicons
    use 'kyazdani42/nvim-web-devicons'

    -- Copilot
    use 'github/copilot.vim'

    -- Latex
    use 'lervag/vimtex'
    -- Lua
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim"
    }
    -- PlantUML Syntax
    use 'aklt/plantuml-syntax'

    -- vim commentary
    use 'tpope/vim-commentary'

    -- Hex colors
    use 'chrisbra/Colorizer'

    -- nvim tree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
    -- Discord
    use 'andweeb/presence.nvim'

    -- PlantUML syntax
    use 'aklt/plantuml-syntax'

    -- Others
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
