return {
  'andweeb/presence.nvim',
  config = function()
    require('presence').setup{
      auto_update = true,
      show_time = true,
      -- Rich Presence text options
      editing_text = "Editing %s",
      workspace_text = "Working on %s",
    }
  end
}

