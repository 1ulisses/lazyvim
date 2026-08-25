return {
    {
        "nvim-mini/mini.surround",
        opts = {
            mappings = {
                add = "sa",            -- Add surrounding in Normal and Visual modes
                delete = "sd",         -- Delete surrounding
                find = "sf",           -- Find surrounding (to the right)
                find_left = "sF",      -- Find surrounding (to the left)
                highlight = "sh",      -- Highlight surrounding
                replace = "sr",        -- Replace surrounding
                update_n_lines = "sn", -- Update `n_lines`
            },
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            picker = {
                hidden = true,
                layouts = {
                    default = {
                        layout = {
                            box = "horizontal",
                            width = 0.8,
                            min_width = 120,
                            height = 0.8,
                            border = "none",
                            { box = "vertical", title = "{title} {live} {flags}", { win = "input", height = 1 }, { win = "list" } },
                            { win = "preview",  title = "{preview}",              width = 0.5 },
                        },
                    },
                },
                sources = {
                    files = { hidden = true },
                    grep = { hidden = true },
                    explorer = {
                        icons = { tree = { vertical = " ", middle = " ", last = " " } },
                        layout = {
                            layout = {
                                position = "right",
                                box = "vertical",
                                border = "none",
                                { win = "input", height = 1, title = "{title} {live} {flags}" },
                                { win = "list" },
                            },
                        },
                    },
                },
                styles = {
                    input = {
                        border = "none",
                    },
                },
            },
            dashboard = {
                preset = {
                    header = [[
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⢁⠟
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡏⠀⣼⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠞⠉⠀⣀⣠⠃
⠀⠀⠀⠀⠀⠀⠀⠀ ⣠⠞⠋⢀⡠⠶⠞⠉⠉⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠷⣄⠙⢧⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡠⡼⢀⣼⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠰⡟⣹⣿⠘⠋⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣤⣶⣿⣿⣤⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠩⣿⣿⣳⠏⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣴⣦⣄⣀⣀⣰⣿⣿⣿⣀⣀⣀⣠⣦⡀⠀⠀⠀
⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀
⠈⠿⠒⠘⠉⠉⣿⣿⣿⡋⠈⠉⠃⠽⡿⠋⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣼⣿⣷⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡾⣿⣿⣿⢷⡦⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠺⠿⠕⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
            ]],
                },
            },
        },
    },
}
