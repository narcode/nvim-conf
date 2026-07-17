-- vim.api.nvim_set_hl(0, "NormalBlack", { bg = "#000000" })
return {
  {
    "folke/snacks.nvim",
    opts = {
      styles = {
        terminal = {
          position = "bottom",
          height = 11,
        },

        lazygit = {
          width = 0.95,
          height = 0.95,
        },
      },
    },
  },
}
