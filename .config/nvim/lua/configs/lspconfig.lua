require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "somesass_ls", "roslyn_ls", "clangd", "ruby_lsp" }
vim.lsp.config("ts_ls", {
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "html",
  },
})
vim.lsp.config("ruby_lsp", {
  filetypes = { "rb", "ruby", "eruby" },
})
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
