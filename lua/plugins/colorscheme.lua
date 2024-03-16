return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("onedark")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
      require("catppuccin").setup({
        integrations = {
          cmp = true,
          neogit = true,
          neotree = true,
          treesitter = true,
        }
      })
    end,
  },
}
