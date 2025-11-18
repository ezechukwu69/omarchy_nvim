-- bootstrap lazy.nvim, LazyVim and your plugins
-- put this in your main init.lua file ( before lazy setup )
-- vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"
require("config.lazy")
-- for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
--     dofile(vim.g.base46_cache .. v)
-- end

require("config.options")
require("config.mappings")
require("config.autocmd")

-- vim.cmd("colorscheme onedark_dark")
-- vim.cmd("colorscheme base16-black-metal-gorgoroth")
vim.cmd("colorscheme base16-kanagawa-dragon")
-- vim.cmd("colorscheme cyberdream")
-- vim.cmd("colorscheme oxocarbon")
--
--
local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
vim.api.nvim_set_hl(0, "StatusLine", { bg = normal.bg, fg = normal.fg })

-- vim.api.nvim_set_hl(0, 'DiagnosticError', { bg = "none", fg = "#F07D8E", bold = true })
-- vim.api.nvim_set_hl(0, 'DiagnosticWarn', { bg = "none", fg = "#EADDCA", bold = true })
-- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', {
--     underline = true,
--     sp = "#F07D8E",
--     cterm = {
--         undercurl = true
--     },
--     undercurl = true
-- })
--
-- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', {
--     underline = true,
--     sp = "#EADDCA",
--     cterm = {
--         undercurl = true
--     },
--     undercurl = true
-- })
