-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'
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
vim.opt.pumborder = 'rounded'
vim.opt.cmdheight = 0
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'PmenuBorder', { bg = 'NONE', fg = "#CC6600" })
