return {
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function ()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "rust_analyzer", "asm_lsp", "clangd", "bashls", "pyright" },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function ()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("rust_analyzer")
            vim.lsp.enable("asm_lsp")
            vim.lsp.enable("clangd")
            vim.lsp.enable("bashls")
            vim.lsp.enable("pyright")

            vim.lsp.config("*", capabilities)

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    },
}

