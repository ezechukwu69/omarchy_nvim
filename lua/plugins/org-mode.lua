return {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    dependencies = {
        'akinsho/org-bullets.nvim',
        'danilshvalov/org-modern.nvim',
        'lukas-reineke/headlines.nvim',
    },
    config = function()
        -- Setup orgmode
        local Menu = require("org-modern.menu")
        require('orgmode').setup({
            org_agenda_files = '~/org/*',
            org_default_notes_file = '~/org/notes.org',
            org_log_into_drawer = "LOGBOOK",
            org_start_indented = true,
            ui = {
                menu = {
                    handler = function(data)
                        Menu:new({
                            window = {
                                margin = { 1, 0, 1, 0 },
                                padding = { 0, 1, 0, 1 },
                                title_pos = "center",
                                border = "single",
                                zindex = 1000,
                            },
                            icons = {
                                separator = "➜",
                            },
                        }):open(data)
                    end,
                },
            },
        })
        require('org-bullets').setup()
        require("headlines").setup()

        -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
        -- add ~org~ to ignore_install
        -- require('nvim-treesitter.configs').setup({
        --   ensure_installed = 'all',
        --   ignore_install = { 'org' },
        -- })
    end,
}
