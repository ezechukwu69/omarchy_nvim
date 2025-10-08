-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local function chooseserver()
  local servers = vim.fn.serverlist({ peer = true })
  vim.ui.select(servers, {
    prompt = "Choose server to attach to",
    format_item = function(server)
      return server:gsub(".*/", "")
    end,
  }, function(server)
    if server then
      vim.cmd("connect " .. server)
    end
  end)
end

vim.keymap.set("n", "<leader>ps", chooseserver, { desc = "Choose server" })
vim.keymap.set("n", "<leader>gj", function()
  Snacks.terminal("jjui")
end, { desc = "JJ-UI" })
vim.keymap.set("n", "<leader>gJ", function()
  Snacks.terminal("lazyjj")
end, { desc = "LazyJJ" })
vim.keymap.set("n", "<M-m>", "^", { desc = "beggining of indentation" })
vim.keymap.set("n", "<C-a>", "0", { desc = "beginning of line" })
vim.keymap.set("n", "<C-e>", "$", { desc = "end of line" })
vim.keymap.set("n", "<C-s>", "/", { desc = "Search forward" })
vim.keymap.set("n", "<C-r>", "?", { desc = "Search backward" })
vim.keymap.set("n", "U", ":redo<cr>", { desc = "Redo" })
vim.keymap.set({"n", "x", "v", "c"}, "<C-g>", "<esc>", { desc = "Escape" })
vim.keymap.set("n", "<M-x>", ":", { desc = "Execute extended command" })
