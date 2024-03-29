require("indent_blankline").setup {
    char = "▎",
    show_current_context = false,
    show_current_context_start = true,
    filetype_exclude = {
        "vimwiki",
        "man",
        "gitmessengerpopup",
        "diagnosticpopup",
        "lspinfo",
        "packer",
        "checkhealth",
        "TelescopePrompt",
        "TelescopeResults",
        "",
    },
    buftype_exclude = { "terminal" },
    -- viewport_buffer = 100,
    -- space_char_blankline = " ",
    -- show_foldtext = false,
    -- strict_tabs = true,
    -- debug = true,
    -- disable_with_nolist = true,
    -- max_indent_increase = 1,
    -- use_treesitter_scope = true,
}
