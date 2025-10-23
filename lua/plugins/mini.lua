return {
    'nvim-mini/mini.nvim',
    version = false,
    lazy = false,
    keys = {
        { "<leader>hi", function() MiniDiff.toggle_overlay() end, desc = "Diff Toggle Overlay" },
        {
            "<leader>e",
            function()
                MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
            end,
            desc = "Open files"
        },
        -- { "<leader><space>", function() MiniPick.builtin.files() end,                                   desc = "Smart Find Files" },
        -- { "<leader>,",       function() MiniPick.builtin.buffers() end,                                 desc = "Buffers" },
        -- { "<leader>/",       function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- { "<leader>:",       function() MiniExtra.pickers.history({ scope = ":" }) end,                 desc = "Command History" },
        -- { "<leader><space>", function() MiniPick.builtin.files() end,                                   desc = "Smart Find Files" },
        -- { "<leader>,",       function() MiniPick.builtin.buffers() end,                                 desc = "Buffers" },
        -- { "<leader>/",       function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- { "<leader>:",       function() MiniExtra.pickers.history({ scope = ":" }) end,                 desc = "Command History" },
        -- { "<leader><space>", function() MiniPick.builtin.files() end,                                   desc = "Smart Find Files" },
        -- { "<leader>,",       function() MiniPick.builtin.buffers() end,                                 desc = "Buffers" },
        -- { "<leader>/",       function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- { "<leader>:",       function() MiniExtra.pickers.history({ scope = ":" }) end,                 desc = "Command History" },
        -- { "<leader>n",       function() MiniPick.builtin.notifications() end,                           desc = "Notification History" },
        -- { "<leader>e",  function() MiniPick.explorer() end,       desc = "File Explorer" },
        -- find
        -- { "<leader>fb",      function() MiniPick.builtin.buffers() end,                                 desc = "Buffers" },
        -- { "<leader>fc",      function() MiniPick.builtin.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        -- { "<leader>ff",      function() MiniPick.builtin.files() end,                                   desc = "Find Files" },
        -- { "<leader>fg",      function() MiniPick.builtin.git_files() end,                               desc = "Find Git Files" },
        -- { "<leader>fp",      function() Snacks.picker.projects() end,                                   desc = "Projects" },
        -- { "<leader>fr",      function() MiniExtra.pickers.oldfiles() end,                               desc = "Recent" },
        -- git
        -- { "<leader>gb",      function() MiniExtra.pickers.git_branches() end,                           desc = "Git Branches" },
        -- { "<leader>gl",      function() MiniExtra.pickers.git_commits() end,                            desc = "Git Log" },
        -- { "<leader>gd",      function() MiniExtra.pickers.git_hunks() end,                              desc = "Git Diff (Hunks)" },
        -- { "<leader>gf",      function() MiniExtra.pickers.git_commits({ path = "%" }) end,              desc = "Git Log File" },
        -- -- Grep
        -- { "<leader>sb",      function() MiniExtra.pickers.buf_lines() end,                              desc = "Buffer Lines" },
        -- { "<leader>sB",      function() MiniPick.builtin.buffers() end,                                 desc = "Grep Open Buffers" },
        -- -- { "<leader>sg",      function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- { "<leader>fb",      function() MiniPick.builtin.buffers() end,                                 desc = "Buffers" },
        -- { "<leader>fc",      function() MiniPick.builtin.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        -- { "<leader>ff",      function() MiniPick.builtin.files() end,                                   desc = "Find Files" },
        -- { "<leader>fg",      function() MiniPick.builtin.git_files() end,                               desc = "Find Git Files" },
        -- { "<leader>fp",      function() Snacks.picker.projects() end,                                   desc = "Projects" },
        -- { "<leader>fr",      function() MiniExtra.pickers.oldfiles() end,                               desc = "Recent" },
        -- -- git
        -- { "<leader>gb",      function() MiniExtra.pickers.git_branches() end,                           desc = "Git Branches" },
        -- { "<leader>gl",      function() MiniExtra.pickers.git_commits() end,                            desc = "Git Log" },
        -- { "<leader>gd",      function() MiniExtra.pickers.git_hunks() end,                              desc = "Git Diff (Hunks)" },
        -- { "<leader>gf",      function() MiniExtra.pickers.git_commits({ path = "%" }) end,              desc = "Git Log File" },
        -- -- Grep
        -- { "<leader>sb",      function() MiniExtra.pickers.buf_lines() end,                              desc = "Buffer Lines" },
        -- { "<leader>sB",      function() MiniPick.builtin.buffers() end,                                 desc = "Grep Open Buffers" },
        -- { "<leader>sg",      function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- -- { "<leader>fb",      function() MiniPick.builtin.buffers() end,                                 desc = "Buffers" },
        -- -- { "<leader>fc",      function() MiniPick.builtin.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        -- -- { "<leader>ff",      function() MiniPick.builtin.files() end,                                   desc = "Find Files" },
        -- -- { "<leader>fg",      function() MiniPick.builtin.files({ tool = "git" }) end,                   desc = "Find Git Files" },
        -- -- { "<leader>fp",      function() Snacks.picker.projects() end,                                   desc = "Projects" },
        -- -- { "<leader>fr",      function() MiniExtra.pickers.oldfiles() end,                               desc = "Recent" },
        -- -- -- git
        -- -- { "<leader>gb",      function() MiniExtra.pickers.git_branches() end,                           desc = "Git Branches" },
        -- -- { "<leader>gl",      function() MiniExtra.pickers.git_commits() end,                            desc = "Git Log" },
        -- -- { "<leader>gd",      function() MiniExtra.pickers.git_hunks() end,                              desc = "Git Diff (Hunks)" },
        -- -- { "<leader>gf",      function() MiniExtra.pickers.git_commits({ path = "%" }) end,              desc = "Git Log File" },
        -- -- -- Grep
        -- -- { "<leader>sb",      function() MiniExtra.pickers.buf_lines() end,                              desc = "Buffer Lines" },
        -- -- { "<leader>sB",      function() MiniPick.builtin.buffers() end,                                 desc = "Grep Open Buffers" },
        -- -- { "<leader>sg",      function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- -- { "<leader>sg",      function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- { "<leader>sg",      function() MiniPick.builtin.grep_live() end,                               desc = "Grep" },
        -- -- search
        -- -- { '<leader>s"',      function() MiniExtra.pickers.registers() end,                              desc = "Registers" },
        -- -- { '<leader>s/',      function() MiniExtra.pickers.history({ scope = "search" }) end,            desc = "Search History" },
        -- -- { "<leader>sb",      function() MiniExtra.pickers.buf_lines() end,                              desc = "Buffer Lines" },
        -- -- { "<leader>sc",      function() MiniExtra.pickers.history({ scope = ":" }) end,                 desc = "Command History" },
        -- -- { "<leader>sC",      function() MiniExtra.pickers.commands() end,                               desc = "Commands" },
        -- -- { "<leader>sd",      function() MiniExtra.pickers.diagnostics() end,                            desc = "Diagnostics" },
        -- -- { "<leader>sD",      function() MiniExtra.pickers.diagnostics({ scope = "buffer" }) end,        desc = "Buffer Diagnostics" },
        -- -- { "<leader>sh",      function() MiniPick.builtin.help() end,                                    desc = "Help Pages" },
        -- -- { "<leader>sH",      function() MiniExtra.pickers.hl_groups() end,                              desc = "Highlights" },
        -- -- { "<leader>sj",      function() MiniExtra.pickers.location({ scope = "jump" }) end,             desc = "Jumps" },
        -- -- { "<leader>sk",      function() MiniExtra.pickers.keymaps() end,                                desc = "Keymaps" },
        -- -- { "<leader>sl",      function() MiniExtra.pickers.list({ scope = "location" }) end,             desc = "Location List" },
        -- -- { "<leader>sm",      function() MiniExtra.pickers.marks() end,                                  desc = "Marks" },
        -- -- { "<leader>sM",      function() MiniPick.builtin.man() end,                                     desc = "Man Pages" },
        -- -- { "<leader>sq",      function() MiniExtra.pickers.list({ scope = "quickfix" }) end,             desc = "Quickfix List" },
        -- -- { "<leader>st",      function() MiniExtra.pickers.treesitter() end,                             desc = "Tree-sitter Nodes" },
        -- -- { "<leader>sR",      function() MiniPick.builtin.resume() end,                                  desc = "Resume" },
        -- -- { "<leader>uC",      function() MiniExtra.pickers.colorschemes() end,                           desc = "Colorschemes" },
        -- -- -- LSP
        -- -- { "gd",              function() MiniExtra.pickers.lsp({ scope = "definition" }) end,            desc = "Goto Definition" },
        -- -- { "gD",              function() MiniExtra.pickers.lsp({ scope = "declaration" }) end,           desc = "Goto Declaration" },
        -- -- { "grr",             function() MiniExtra.pickers.lsp({ scope = "references" }) end,            nowait = true,                  desc = "References" },
        -- -- { "gI",              function() MiniExtra.pickers.lsp({ scope = "implementation" }) end,        desc = "Goto Implementation" },
        -- -- { "gy",              function() MiniExtra.pickers.lsp({ scope = "type_definition" }) end,       desc = "Goto T[y]pe Definition" },
        -- -- { "<leader>ss",      function() MiniExtra.pickers.lsp({ scope = "document_symbol" }) end,       desc = "LSP Symbols" },
        -- -- { "<leader>sS",      function() MiniExtra.pickers.lsp({ scope = "workspace_symbol" }) end,      desc = "LSP Workspace Symbols" },
    },
    config = function()
        require('mini.pairs').setup()
        require('mini.ai').setup()
        local miniclue = require('mini.clue')
        miniclue.setup({
            triggers = {
                { mode = "n", keys = "<Leader>" },
                { mode = "x", keys = "<Leader>" },

                { mode = "i", keys = "<C-x>" },

                { mode = "n", keys = "g" },
                { mode = "x", keys = "g" },

                { mode = "n", keys = '"' },
                { mode = "x", keys = '"' },
                { mode = "i", keys = '<C-r>' },
                { mode = "c", keys = '<C-r>' },

                { mode = "n", keys = "<C-w>" },

                { mode = "n", keys = "z" },
                { mode = "x", keys = "z" },
            },
            clues = {
                { mode = "n", keys = "<Leader>a", desc = "+AI" },
                { mode = "n", keys = "<Leader>b", desc = "+Buffers" },
                { mode = "n", keys = "<Leader>c", desc = "+Code" },
                { mode = "x", keys = "<Leader>a", desc = "+AI" },
                { mode = "n", keys = "<Leader>d", desc = "+Debugger" },
                { mode = "x", keys = "<Leader>d", desc = "+Debugger" },
                { mode = "n", keys = "<Leader>g", desc = "+Git" },
                { mode = "x", keys = "<Leader>g", desc = "+Git" },
                { mode = "n", keys = "<Leader>j", desc = "+JJ" },
                { mode = "n", keys = "<Leader>h", desc = "+Highlight" },
                { mode = "x", keys = "<Leader>h", desc = "+Highlight" },
                { mode = "n", keys = "<Leader>s", desc = "+Search" },
                { mode = "x", keys = "<Leader>s", desc = "+Search" },
                { mode = "n", keys = "<Leader>f", desc = "+Find" },
                { mode = "x", keys = "<Leader>f", desc = "+Find" },
                { mode = "n", keys = "<Leader>t", desc = "+Toggle" },
                { mode = "n", keys = "<Leader>u", desc = "+Toggle UI" },
                miniclue.gen_clues.builtin_completion(),
                miniclue.gen_clues.g(),
                miniclue.gen_clues.marks(),
                miniclue.gen_clues.registers(),
                miniclue.gen_clues.windows({ submode_resize = true }),
                miniclue.gen_clues.z(),
            },
            window = {
                -- Floating window config
                config = {},

                -- Delay before showing clue window
                delay = 100,

                -- Keys to scroll inside the clue window
                scroll_down = '<C-d>',
                scroll_up = '<C-u>',
            },
        })
        require('mini.diff').setup({
            view = {
                style = "sign",
                signs = { add = '▒', change = '▒', delete = '▒' },
            }
        })
        require("mini.bufremove").setup()
        require("mini.jump").setup()
        -- require("mini.jump2d").setup()
        require('mini.indentscope').setup()
        require('mini.statusline').setup()
        require('mini.tabline').setup()
        require('mini.surround').setup()
        require('mini.files').setup()
        require('mini.extra').setup()
        require('mini.pick').setup()
        require('mini.hipatterns').setup()
    end
}
