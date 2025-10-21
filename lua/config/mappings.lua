local map = vim.keymap.set

map("n", "<A-h>", "<C-w>h", { noremap = true, silent = true });
map("n", "<A-j>", "<C-w>j", { noremap = true, silent = true });
map("n", "<A-k>", "<C-w>k", { noremap = true, silent = true });
map("n", "<A-l>", "<C-w>l", { noremap = true, silent = true });

-- map terminal modes also
map("t", "<A-h>", "<C-\\><C-N><C-w>h", { noremap = true, silent = true });
map("t", "<A-j>", "<C-\\><C-N><C-w>j", { noremap = true, silent = true });
map("t", "<A-k>", "<C-\\><C-N><C-w>k", { noremap = true, silent = true });
map("t", "<A-l>", "<C-\\><C-N><C-w>l", { noremap = true, silent = true });

map("n", "<leader>tt", function()
    vim.ui.input({ prompt = "Terminal Command > " }, function(input)
        if input == nil or input == "" then
            return
        end
        require("snacks").terminal(input, { auto_close = false })
    end)
end, { noremap = true, desc = "Terminal" });
