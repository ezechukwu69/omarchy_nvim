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
