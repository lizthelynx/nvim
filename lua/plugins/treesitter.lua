return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "rust", "nasm" },
        highlight = { enable = true },
        indent = { enable = true },
    },
}
 
