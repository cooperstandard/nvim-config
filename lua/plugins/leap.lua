return {
  "ggandor/leap.nvim",
  config = function()
    local leap = require("leap")
    vim.keymap.set('n', 'gw', '<Plug>(leap-forward)', {desc = "leap forward"})
    vim.keymap.set('n', 'gW', '<Plug>(leap-backward)', {desc = 'leap backward'})
    leap.opts.highlight_unlabeled_phase_one_targets = true
    -- vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
  end
}
