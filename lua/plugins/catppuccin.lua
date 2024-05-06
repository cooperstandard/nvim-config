return {
    "catppuccin/nvim",
    config = function()
        require("catppuccin").setup({
            flavour = "latte",
            -- vim.api.nvim_set_hl(0, "Comment", {fg= "#000000"}),
            -- vim.api.nvim_set_hl(0, "@comment", {link = "Comment"}),
        })
    end
}
