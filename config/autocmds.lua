-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- color terminal
--
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function(args)
    vim.api.nvim_set_hl(0, "TermBlack", { bg = "#111111" })
    vim.api.nvim_set_hl(0, "TermBlackNC", { bg = "#111111" })

    vim.api.nvim_set_option_value(
      "winhighlight",
      "Normal:TermBlack,NormalNC:TermBlackNC,EndOfBuffer:TermBlack,SignColumn:TermBlack",
      { win = 0 }
    )
  end,
})
