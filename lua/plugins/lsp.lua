return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_in_insert = false,
      },
      servers = {
        jdtls = {},
      },
      setup = {
        jdtls = function()
          return true
        end,
      },
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
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "java-debug-adapter", "java-test" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "java" } },
  },
}
