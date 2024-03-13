return {
	"MunifTanjim/prettier.nvim",
	config = function()
		local prettier = require("prettier")
		prettier.setup({
			bin = "prettierd", -- or 'prettier'
			filetypes = {
				"css",
				"graphql",
				"html",
				"javascript",
				"javascriptreact",
				"json",
				"less",
				"markdown",
				"scss",
				"typescript",
				"typescriptreact",
				"yaml",
			},
		})

        vim.keymap.set("n", "<leader>f", "<Cmd>:Prettier<CR>", {})
	end,
}
