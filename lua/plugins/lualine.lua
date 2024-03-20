return {
	"nvim-lualine/lualine.nvim",
  config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
        disabled_filetypes = {
          statusline = { "typst" },
          winbar = { "typst" },
        },
			},
		})
	end,
}
