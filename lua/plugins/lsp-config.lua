return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.typst_lsp.setup({
				settings = {
					exportPdf = "onSave", -- Choose onType, onSave or never.
				},
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
				filetypes = { "conf" },
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer=0})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer=0})
      vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, {buffer=0})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {buffer=0})
      vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {buffer=0})
      vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next)
      vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev)
		end,
	},
}
