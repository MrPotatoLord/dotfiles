return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = {
        "typescript_language_server",
        "some-sass-language-server",
        "prettier",
        -- "csharp-language-server",
        "roslyn",
      },
    },
  },
}
