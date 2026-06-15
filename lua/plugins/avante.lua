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
        api_key = os.getenv("AQ.Ab8RN6Iqa8abFja38WU0GMbzGkrzo4gXmSn2_NnwfNr4ouBt_w"),
      },
    },
  },
  build = "make",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
}
