require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "somesass_ls" }
vim.lsp.config("ts_ls", {
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
})
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
