return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "lawrence-laz/neotest-zig",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "vim-test/vim-test",
        "Issafalcon/neotest-dotnet",
        -- adapters
        "nvim-neotest/neotest-python",
        "sidlatau/neotest-dart",
        "nvim-neotest/neotest-plenary",
        "nvim-neotest/neotest-vim-test",
    },
    keys = {
        {
            "<leader>tr",
            function()
                require("neotest").run.run()
            end,
            desc = "Run tests"
        },
        {
            "<leader>tf",
            function()
                require("neotest").run.run(vim.fn.expand("%"))
            end,
            desc = "Run tests in current file"
        },
        {
            "<leader>td",
            function()
                require("neotest").run.run(vim.fn.expand("%"), { strategy = "dap" })
            end,
            desc = "Run nearest tests in file with dap"
        },
        {
            "<leader>ts",
            function()
                require("neotest").summary.toggle()
            end,
            desc = "Open the summary window"
        },
        {
            "<leader>to",
            function()
                require("neotest").output.open()
            end,
            desc = "Open the output window"
        },
        {
            "<leader>tO",
            function()
                require("neotest").output_panel.open()
            end,
            desc = "Open the output panel window"
        },
        -- stop test
        {
            "<leader>tq",
            function()
                require("neotest").stop.stop()
            end,
            desc = "Stop the current test"
        },
        -- attach to test
        {
            "<leader>ta",
            function()
                require("neotest").run.attach()
            end,
            desc = "Attach to the test"
        },
        -- watch keymaps
        {
            "<leader>tw",
            function()
                require("neotest").watch.toggle()
            end,
            desc = "Toggle watching current file"
        },
        {
            "<leader>tW",
            function()
                require("neotest").watch.toggle(vim.fn.expand("%"))
            end,
            desc = "Toggle watching current file"
        }
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-python")({
                    dap = { justMyCode = false },
                }),
                require("neotest-plenary"),
                require("neotest-dotnet")({
                    dap = {
                        args = { justMyCode = false },
                        adapter_name = "netcoredbg",
                        dotnet_additional_args = {
                            "--verbosity detailed"
                        },
                    },
                }),
                require("neotest-vim-test")({
                    ignore_file_types = {},
                }),
                require('neotest-zig') {},
                require('neotest-dart') {
                    command = 'flutter', -- Command being used to run tests. Defaults to `flutter`
                    use_lsp = true,
                    custom_test_method_names = {},
                }
            },
        })
    end
}
