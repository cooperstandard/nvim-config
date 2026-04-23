return {
  "https://github.com/github/copilot.vim",
  -- vim.keymap.set("i", "C-g", 'copilot#Accept("<CR>")', { desc = "accept copilot suggestion" }),
  vim.api.nvim_set_keymap("i", "<C-g>", 'copilot#Accept("<CR>")', { expr = true, silent = true }),
  -- TODO: add a toggle for copilot
}
