local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript_language_server",
        "some-sass-language-server",
        "prettier"
      }
    }
  },
}
return plugins
