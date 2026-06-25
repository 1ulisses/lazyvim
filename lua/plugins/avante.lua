local secrets = require("secrets")

return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Get latest
  opts = {
    provider = "gemini", -- or "claude", "openai", "copilot"
    instructions_file = "avante.md",
    system_prompt = "You are a senior code reviewer. Focus on security and performance.",
    providers = {
      gemini = {
        model = "gemini-2.5-flash",
        api_key = secrets.api_key,
      },
    },
  },
  build = "make",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
}
