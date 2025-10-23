vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "help", "man", "qf" },
    callback = function(ev)
        local bufnr = ev.buf
        vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>close<cr>", { noremap = true, silent = true })
    end
})


vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "qf" },
    callback = function(ev)
        local bufnr = ev.buf
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<tab>", "<cmd>cnext<cr>", { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<S-tab>", "<cmd>cprev<cr>", { noremap = true, silent = true })
    end
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "DiffviewFiles", "DiffviewFileHistory" },
    callback = function(ev)
        local bufnr = ev.buf
        vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>DiffviewClose<cr>", { noremap = true, silent = true })
    end
})
