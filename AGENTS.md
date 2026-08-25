# Neovim Configuration Handover

## Project Overview
LazyVim-based Neovim config with custom plugins, keymaps, and theming via neopywal (wallust). Optimized for Java development with AI assistance via opencode.

## Structure
```
~/.config/nvim/
├── init.lua              # Entry point, loads lazy.nvim
├── lua/
│   ├── config/
│   │   ├── lazy.lua      # Lazy.nvim setup with LazyVim + custom plugins
│   │   ├── options.lua   # vim.g.snacks_animate=false, winborder="solid"
│   │   ├── keymaps.lua   # Visual delete without yank ("_d)
│   │   └── autocmds.lua  # Disables lazyvim_wrap_spell
│   └── plugins/
│       ├── plugins.lua   # mini.surround, snacks.nvim (picker, dashboard)
│       ├── avante.lua    # AI provider = opencode
│       ├── lsp.lua       # jdtls, pyright config, mason java tools
│       ├── neopywal.lua  # Theme via wallust, transparent bg, bufferline, lualine
│       ├── render-markdown.lua
│       ├── colorizer.lua # CSS/JS/HTML color highlighting
│       └── disabled.lua  # flash.nvim disabled
├── lazyvim.json          # Extras: avante, java, dot
└── stylua.toml
```

## Key Customizations

### Theme
- **neopywal** with wallust integration (`/home/srch/.cache/wallust/colors_neopywal.vim`)
- Transparent background, palette: wallust (light/dark)
- Integrates: lualine, bufferline, mini, blink_cmp, mason, treesitter, LSP
- LSP virtual text: bold+italic, undercurl underlines, inlay hints bold+italic+bg

### AI
- **avante.nvim** provider: `opencode` (not default claude/openai)

### Java Development
- `lazyvim.plugins.extras.lang.java` enabled
- jdtls configured (auto-setup returns true)
- Mason ensures: `java-debug-adapter`, `java-test`
- Treesitter ensures: `java`

### Snacks Picker
- Hidden files enabled by default
- Horizontal layout (80% width, 120 min), no borders
- Explorer on right, tree icons minimal

### Dashboard
- Custom ASCII art header

### Keymaps
- Visual mode `d` → delete to black hole register (`"_d`)

### Colorizer
- Attaches on TextChanged/TextChangedI/InsertLeave for CSS/JS/HTML

## Commands
- `:Lazy` - plugin manager
- `:Mason` - LSP/tool installer
- `:checkhealth` - diagnostics

## Dependencies
- Neovim ≥ 0.10
- lazy.nvim (auto-bootstrapped)
- wallust (for theme colors)
- java/jdtls for Java support

## Known Quirks
- Custom plugins load at startup (`lazy = false` in lazy.lua)
- pyright restricted to open files only (performance)
- flash.nvim disabled (use snacks picker instead)