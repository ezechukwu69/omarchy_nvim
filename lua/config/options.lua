-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wildmode = "longest,list"
vim.opt.cursorline = true
vim.opt.ttyfast = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.pumborder = "rounded"
vim.o.winborder = "rounded"
vim.opt.cmdheight = 0
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.cmd("set laststatus=3")
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
vim.api.nvim_set_hl(0, "PmenuBorder", { bg = "NONE", fg = "#CC6600" })
local normal = vim.api.nvim_get_hl(0, {
  name = "Normal",
})

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.o.guifont = "Iosevka Nerd Font:h11:b" -- text below applies for VimScript
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_floating_corner_radius = 7
  -- always_quit, always_detach, or prompt
  vim.g.neovide_detach_on_quit = "prompt"
end

require("vim._extui").enable({
  enable = true, -- Whether to enable or disable the UI.
  msg = { -- Options related to the message module.
    ---@type 'cmd'|'msg' Where to place regular messages, either in the
    ---cmdline or in a separate ephemeral message window.
    target = "cmd",
    timeout = 4000, -- Time a message is visible in the message window.
  },
})

vim.diagnostic.config({
  signs = {
    active = true,
    text = {
      [vim.diagnostic.severity.ERROR] = "", -- Error icon (Nerd Font)
      [vim.diagnostic.severity.WARN] = "", -- Warning icon (Nerd Font)
      [vim.diagnostic.severity.INFO] = "", -- Info icon (Nerd Font)
      [vim.diagnostic.severity.HINT] = "💡", -- Hint icon (emoji or other symbol)
    },
  },
  virtual_text = {
    current_line = true,
  }, -- Enable virtual text for inline messages
  update_in_insert = false, -- Don't update diagnostics in insert mode
})
