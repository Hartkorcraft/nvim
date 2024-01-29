return {
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {},
    config = function()
      -- place this in one of your configuration file(s)
      local hop = require("hop").setup()
      local directions = require("hop.hint").HintDirection

      vim.keymap.set("", ";","<cmd>HopWord<CR>" )
    end,
  },
}
