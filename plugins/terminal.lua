return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>t",
        function()
          Snacks.terminal()
        end,
        desc = "Terminal",
      },
    },
    opts = {
      terminal = {},
    },
  },
}
