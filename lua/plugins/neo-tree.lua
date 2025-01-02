return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Recomendado para los iconos
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Desactivar netrw para evitar conflictos con neo-tree
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Configuración básica de neo-tree
    require("neo-tree").setup({
      close_if_last_window = true, -- Cierra neo-tree si es la última ventana abierta
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_hidden = true,
        },
        follow_current_file = {
          enabled = true, -- Sigue el archivo actual en el árbol de archivos.
          leave_dirs_open = true, -- Mantiene los directorios abiertos mientras sigues el archivo actual.
        },
      },
    })

    -- Mapeo de teclas para abrir/alternar neo-tree
    vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { silent = true, noremap = true, desc = "Toggle NeoTree" })
    vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>", { silent = true })

    vim.keymap.set("n", "<leader>w", ":Neotree close<CR>", { silent = true, noremap = true, desc = "Close NeoTree" })


  end
}

