return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    config = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            local map = function(keys, func, desc)
              vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "Rust: " .. desc })
            end
            map("K", function() vim.cmd.RustLsp("hover", "actions") end, "Hover Actions")
            map("<leader>ca", function() vim.cmd.RustLsp("codeAction") end, "Code Action")
            map("<leader>rr", function() vim.cmd.RustLsp("runnables") end, "Runnables")
            map("<leader>rd", function() vim.cmd.RustLsp("debuggables") end, "Debuggables")
            map("<leader>re", function() vim.cmd.RustLsp("expandMacro") end, "Expand Macro")
            map("<leader>rc", function() vim.cmd.RustLsp("openCargo") end, "Open Cargo.toml")
            map("<leader>rp", function() vim.cmd.RustLsp("parentModule") end, "Parent Module")
          end,
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                runBuildScripts = true,
              },
              checkOnSave = {
                allFeatures = true,
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
      }
    end,
  },
}
