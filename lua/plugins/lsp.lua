return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                jdtls = {},
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
            setup = {
                jdtls = function()
                    return true
                end,
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
