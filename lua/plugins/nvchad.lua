return {
    "nvim-lua/plenary.nvim",
    { "nvim-tree/nvim-web-devicons", lazy = true },

    -- {
    --     "nvchad/ui",
    --     config = function()
    --         require "nvchad"
    --     end,
    --     event = "VeryLazy",
    --     keys = {
    --         {
    --             "<leader>pt",
    --             function()
    --                 require("nvchad.themes").open()
    --             end,
    --             desc = "Themes"
    --         },
    --         {
    --             "<leader>tv",
    --             function()
    --                 require("nvchad.term").new { pos = "vsp" }
    --             end,
    --             desc = "Vertical term"
    --         },
    --         {
    --             "<leader>th",
    --             function()
    --                 require("nvchad.term").new { pos = "sp" }
    --             end,
    --             desc = "Horizontal term"
    --         },
    --         {
    --             "<A-v>",
    --             function()
    --                 require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
    --             end,
    --             mode = { "n", "t" },
    --             desc = "terminal toggleable vertical term"
    --         },
    --         {
    --             "<A-h>",
    --             function()
    --                 require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
    --             end,
    --             mode = { "n", "t" },
    --             desc = "terminal toggleable horizontal term"
    --         },
    --         {
    --             "<A-i>",
    --             function()
    --                 require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
    --             end,
    --             mode = { "n", "t" },
    --             desc = "terminal toggle floating term"
    --         },
    --     }
    -- },

    -- {
    --     "nvchad/base46",
    --     lazy = true,
    --     build = function()
    --         require("base46").load_all_highlights()
    --     end,
    -- },

    "nvchad/volt",
    {
        "nvzone/minty",
        cmd = { "Shades", "Huefy" },
    },
    {
        "nvzone/floaterm",
        dependencies = "nvzone/volt",
        opts = {
            {
                mappings = {
                    term = function(buf)
                        vim.keymap.set({ "n", "t" }, "<C-n>", function()
                            require("floaterm.api").cycle_term_bufs "next"
                        end, { buffer = buf })
                        vim.keymap.set({ "n", "t" }, "<C-p>", function()
                            require("floaterm.api").cycle_term_bufs "prev"
                        end, { buffer = buf })
                        vim.keymap.set({ "n", "t" }, "<C-/>", function()
                            require("floaterm.api").new_term { name = "auto" }
                        end, { buffer = buf })
                        vim.keymap.set({ "n", "t" }, "<tab>", function()
                            require("floaterm.api").switch_wins()
                        end, { buffer = buf })
                    end,
                },
            },
        },
        keys = {
            { "<A-t>", "<cmd>FloatermToggle<cr>", desc = "Floaterm Toggle", mode = { "n", "t" } },
        },
        cmd = "FloatermToggle",
    }
}
