return {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration
        "folke/snacks.nvim",             -- optional
    },
    keys = {
        { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
    }
}
