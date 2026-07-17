return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          before_init = function(_, config)
            local root = config.root_dir or vim.fn.getcwd()
            local python = root .. "/.venv/bin/python"

            if vim.fn.filereadable(python) == 1 then
              config.settings = config.settings or {}
              config.settings.python = config.settings.python or {}
              config.settings.python.pythonPath = python
            end
          end,
        },
      },
    },
  },
}
