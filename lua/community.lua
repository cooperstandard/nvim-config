-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- { import = "astrocommunity.colorscheme.catppuccin"},
  -- { import = "astrocommunity.colorscheme.monokai-pro-nvim"},
  -- { import = "astrocommunity.pack.java"},
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline"},
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.diagnostics.trouble-nvim"},
  { import = "astrocommunity.fuzzy-finder.snacks-picker"},
  { import = "astrocommunity.scrolling.nvim-scrollbar"},
  -- { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
}
