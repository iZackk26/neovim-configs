return {
  'akinsho/bufferline.nvim',
  version = "*", -- Usa la última versión estable
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("bufferline").setup{
      options = {
        mode = "buffers", -- Cambia entre "tabs" o "buffers"
        separator_style = "slant", -- Puedes cambiar esto a "thick", "thin", "slant", "padded_slant", etc.
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = "nvim_lsp", -- Mostrar diagnósticos de LSP en las pestañas
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
            separator = true
          }
        }
      }
    }

    -- Opciones de navegación entre pestañas
    vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { silent = true })
    vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { silent = true })
  end,
}

