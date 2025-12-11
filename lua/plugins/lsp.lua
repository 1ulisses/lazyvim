return {
  { "mfussenegger/nvim-jdtls" },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "java-debug-adapter",
        "java-test",
      },
    },
  },
}
