-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")
require("config.mappings")
require("config.autocmd")

-- vim.cmd("colorscheme onedark_dark")
vim.cmd("colorscheme onedark_dark")
-- vim.cmd("colorscheme oxocarbon")
--
local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
vim.api.nvim_set_hl(0, 'MiniPickMatchCurrent', { bold = true, bg = normal.fg, fg = normal.bg })
