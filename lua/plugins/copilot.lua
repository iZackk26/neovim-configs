vim.api.nvim_set_keymap("i", "<leader>v", [[copilot#Accept("\<leader>v")]], {
    expr = true,
    silent = true,
    script = true
})
vim.g.copilot_no_tab_map = true
