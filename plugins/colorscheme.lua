-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    opts = {
      style = "dark", -- or "light"
      transparent = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
