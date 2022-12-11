require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true
    },
    indent = {
        enable = false
    },
    ensure_installed = {
        "go",
        "python",
        "json",
        "yaml",
        "bash",
        "lua",
        "dockerfile",
        "gitignore"
    },
    auto_install = true
})
