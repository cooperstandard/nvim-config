return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.surround').setup()
  end,
  -- https://github.com/echasnovski/mini.surround for doc
  -- sab on selection to add parens, srb] to replace surrounding parens with square brackets, sdb to delete surrounding parens
}
