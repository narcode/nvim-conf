return {
  -- disable Snacks explorer keymaps/features
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      picker = {
        sources = {
          explorer = { enabled = false },
        },
      },
    },
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },

  -- enable Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle filesystem reveal left<cr>",
        desc = "Explorer Neo-tree",
      },
      {
        "<leader>E",
        "<cmd>Neotree toggle filesystem reveal left<cr>",
        desc = "Explorer Neo-tree",
      },
    },
    opts = {
      filesystem = {
        hijack_netrw_behavior = "disabled",
      },
    },
  },
}
