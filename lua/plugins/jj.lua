return {
    "nicolasgb/jj.nvim",
    dependencies = {
        "folke/snacks.nvim", -- Optional only if you use picker's
    },
    config = function()
        require("jj").setup({
            highlights = {
                -- Customize colors if desired
                modified = { fg = "#89ddff" },
            },
            describe_editor = "input",     -- Use simple input mode
        })

        -- Use the exposed functions directly from the main module
        vim.keymap.set("n", "<leader>jd", "<cmd>J desc<cr>", { desc = "JJ describe" })
        vim.keymap.set("n", "<leader>jl", "<cmd>J log<cr>", { desc = "JJ log" })
        vim.keymap.set("n", "<leader>je", "<cmd>J edit<cr>", { desc = "JJ edit" })
        vim.keymap.set("n", "<leader>jn", "<cmd>J new<cr>", { desc = "JJ new" })
        vim.keymap.set("n", "<leader>js", "<cmd>J status<cr>", { desc = "JJ status" })
        vim.keymap.set("n", "<leader>jD", "<cmd>J diff<cr>", { desc = "JJ diff" })
        vim.keymap.set("n", "<leader>jS", "<cmd>J squash<cr>", { desc = "JJ squash" })

        -- Pickers
        local picker = require("jj.picker")
        vim.keymap.set("n", "<leader>jj", picker.status, { desc = "JJ Picker status" })
        vim.keymap.set("n", "<leader>jh", picker.file_history, { desc = "JJ Picker file history" })

        -- Some functions like `describe` or `log` can take parameters
        vim.keymap.set("n", "<leader>jL", "<cmd>J log -r \"all()\"<cr>", { desc = "JJ log all" })

        -- This is an alias i use for moving bookmarks its so good
        -- vim.keymap.set("n", "<leader>jt", function()
        --     local cmd = require("jj.cmd")
        --     cmd.j "tug"
        --     cmd.log {}
        -- end, { desc = "JJ tug" })
    end,
}
