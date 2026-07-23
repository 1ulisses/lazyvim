return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      pyright = {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = false,
              diagnosticMode = "openFilesOnly",
              useLibraryCodeForTypes = false,
            },
          },
        },
      },
    },
  },
}
