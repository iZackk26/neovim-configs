-- lua/config/windows.lua

local M = {}

function M.setup()
  local opts = { noremap = true, silent = true }

  -- Cerrar la ventana actual con <leader>c
  vim.keymap.set("n", "<leader>c", ":close<CR>", opts, { desc = "Close Window" })

  -- Abrir una nueva ventana vertical y equilibrar todas las ventanas con <leader>ss
  vim.keymap.set("n", "<leader>ss", function()
    vim.cmd("vsplit")
    vim.cmd("wincmd =")
  end, opts, { desc = "Split Window and Balance" })
end

return M

