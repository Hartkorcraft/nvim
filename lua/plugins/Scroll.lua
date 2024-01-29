return {
  {
    "declancm/cinnamon.nvim",
    config = function()
      require("cinnamon").setup({
        default_keymaps = true, -- Create default keymaps.
        extra_keymaps = true, -- Create extra keymaps.
        extended_keymaps = true, -- Create extended keymaps.
        override_keymaps = true,
        always_scroll = true,
        horizontal_scroll = true,
      })
    end,
  },
}
