return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  version = "3.13.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>[", ":Neotree<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers<CR>", {})

    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = "left",
        filesystem = {
          filtered_items = {
            visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
            hide_dotfiles = false,
            hide_gitignored = true,
          },
        },
      },
    })
  end,
}
