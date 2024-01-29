return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    ensure_installed = { "lua-ls", "csharp-ls" },
    config = function()
      require("mason-lspconfig").setup()
    end,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
    },
    config = function()
      local lspconfig = require("lspconfig")

      local omnisharp_bin = "D:/Programy/omnisharp/OmniSharp.exe"
      local pid = vim.fn.getpid()
      lspconfig.lua_ls.setup({})
      lspconfig.omnisharp.setup({
        cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
