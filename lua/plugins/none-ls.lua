return {
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {},
            })
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            local mason_null_ls = require("mason-null-ls")
            mason_null_ls.setup({
                ensure_installed = {
                    "stylua",
                    "eslint_d",
                    "prettierd",
                },
                automatic_installation = true,
            })
        end,
    },
}
