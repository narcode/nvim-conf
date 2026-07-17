local function paste_from_clipboard()
  vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
end

-- Ctrl+V paste from system clipboard in normal, insert, visual, command, terminal
-- vim.keymap.set({ "n", "i", "v", "c", "t" }, "<C-v>", paste_from_clipboard, {
--   silent = true,
--   desc = "Paste from system clipboard",
-- })

-- Optional macOS Cmd+V
vim.keymap.set({ "n", "i", "v", "c", "t" }, "<D-v>", paste_from_clipboard, {
  silent = true,
  desc = "Paste from system clipboard",
})

return {}
