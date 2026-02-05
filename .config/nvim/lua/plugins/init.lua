return {
  { "folke/which-key.nvim", lazy = false },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- {
  --   "svermeulen/vimpeccable",
  --   lazy = false,
  -- },
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --     mappings = {
  --       custom_only = false, -- Allow default mappings alongside custom ones
  --       list = {
  --         { key = "x", action = "run_file_command", action_cb = function()
  --         vim.api.nvim_command(string.format('silent !explorer.exe /select,"%s"', path))
  --         },
  --       },
  --     },
  --  }

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "python",
        "c",
        "cpp",
        "c_sharp",
      },
    },
    auto_install = true,
  },
}
