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
	    }
    })
    vim.keymap.set("n","<M-b>","<CMD>Oil<CR>",{desc = "Open buffer list"})
  end,
}
