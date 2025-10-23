return {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    enabled = true,
    config = function()
        require("gitsigns").setup {
            signs_staged_enable = false,
            numhl               = false, -- Toggle with `:Gitsigns toggle_numhl`
            linehl              = false, -- Toggle with `:Gitsigns toggle_linehl`
            word_diff           = false, -- Toggle with `:Gitsigns toggle_word_diff`
            current_line_blame  = true,  -- Toggle with `:Gitsigns toggle_current_line_blame`
            attach_to_untracked = false,
            on_attach           = function(bufnr)
                local gitsigns = require('gitsigns')
                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end
                map('n', ']c', function()
                    if vim.wo.diff then
                        vim.cmd.normal({ ']c', bang = true })
                    else
                        gitsigns.nav_hunk('next')
                    end
                end)

                map('n', '[c', function()
                    if vim.wo.diff then
                        vim.cmd.normal({ '[c', bang = true })
                    else
                        gitsigns.nav_hunk('prev')
                    end
                end)
                map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage Hunk' })
                map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset Hunk' })
                map('v', '<leader>hs', function()
                    gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
                end, { desc = 'Stage Hunk' })
                map('v', '<leader>hr', function()
                    gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
                end, { desc = 'Reset Hunk' })

                map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Stage Buffer' })
                map('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'Reset Buffer' })
                map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Preview Hunk' })
                -- map('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc = 'Preview Hunk Inline' })
                map('n', '<leader>hb', function()
                    gitsigns.blame_line({ full = true })
                end, { desc = 'Blame Line' })

                map('n', '<leader>hd', gitsigns.diffthis, { desc = 'Diff This File' })

                map('n', '<leader>hD', function()
                    gitsigns.diffthis('~')
                end, { desc = 'Diff This File with ~' })

                map('n', '<leader>hQ', function() gitsigns.setqflist('all') end, { desc = 'Set QF List for all' })
                map('n', '<leader>hq', gitsigns.setqflist, { desc = 'Set QF List' })
                -- Text object
                map({ 'o', 'x' }, 'hh', gitsigns.select_hunk, { desc = 'Select Hunk' })

                map("n", 'hvv', "<cmd>DiffviewOpen<cr>", { desc = 'Diff View open' })
                map("n", 'hvh', "<cmd>DiffviewFileHistory<cr>", { desc = 'Diff View History' })

                -- Toggles
                map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Toggle Current Line Blame' })
                map('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = 'Toggle Word Diff' })
            end
        }
    end
}
