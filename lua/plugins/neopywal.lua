return {
  {
    "RedsXDD/neopywal.nvim",
    name = "neopywal",
    lazy = false,
    priority = 1000,
    opts = {
      use_wallust = true,
      colorscheme_file = "~/.cache/wallust/colors_neopywal.vim",
      terminal_colors = true,
      transparent_background = true,
      use_palette = {
        light = "wallust",
        dark = "wallust",
      },
      plugins = {
        lazy = true,
        blink_cmp = true,
        mason = true,
        treesitter = true,
        mini = {
          surround = true,
          icons = true,
        },
        lsp = {
          enabled = true,
          virtual_text = {
            errors = { "bold", "italic" },
            hints = { "bold", "italic" },
            information = { "bold", "italic" },
            ok = { "bold", "italic" },
            warnings = { "bold", "italic" },
            unnecessary = { "bold", "italic" },
          },
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            information = { "undercurl" },
            ok = { "undercurl" },
            warnings = { "undercurl" },
          },
          inlay_hints = {
            background = true,
            style = { "bold", "italic" },
          },
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("bufferline").setup({
        highlights = require("neopywal.theme.plugins.bufferline").setup(),
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "neopywal",
    },
  },
}
