return {
  "terrortylor/nvim-comment",
  config = function()
    require('nvim_comment').setup{
      -- Opciones de configuración aquí
      marker_padding = true,
      comment_empty = false,
      create_mappings = true,
    }
  end
}

