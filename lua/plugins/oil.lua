return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('oil').setup({
	    columns= {
		    "icon",
		    --"permissions",
		    --"size",
        --"mtime",
	    },
      keymaps = {
        ["<leader>,"] = "actions.open_cwd",
      },
    })
    vim.keymap.set("n","<C-b>","<CMD>Oil<CR>",{desc = "Open buffer list"})
  end,
}
