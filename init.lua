-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

vim.cmd "set whichwrap+=h,l"
vim.opt.cc = "120" -- add rulers at columns 120
vim.keymap.set("n", "s", "noop") -- to make mini.surround work better
vim.keymap.set("n", "ss", "noop") -- to make mini.surround work better
vim.opt.cursorline = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.cmd "set signcolumn=yes"

-- no rulers or cursorline in markdown, txt, or csv files
vim.cmd [[
  augroup cc
    au!
    autocmd Filetype markdown,md,txt,csv,makefile set colorcolumn =
    autocmd Filetype markdown,md,txt set wrap
    autocmd Filetype markdown,md set conceallevel=1
  augroup end
]]

vim.api.nvim_create_autocmd("User", {
  pattern = "LeapEnter",
  callback = function()
    vim.cmd.hi("Cursor", "blend=100")
    vim.opt.guicursor:append { "a:Cursor/lCursor" }
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LeapLeave",
  callback = function()
    vim.cmd.hi("Cursor", "blend=0")
    vim.opt.guicursor:remove { "a:Cursor/lCursor" }
  end,
})

vim.api.nvim_create_user_command("Cppath", function()
  local path = vim.fn.expand "%:p"
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the pasteboard')
end, {})

vim.cmd [[
    vnoremap K :m '<-2<CR>gv=<ESC>gv
    vnoremap J :m '>+1<CR>gv=<ESC>gv
]]
