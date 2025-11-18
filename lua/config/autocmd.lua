vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "help", "man", "qf", "dap-float", "dap-repl" },
  callback = function(ev)
    local bufnr = ev.buf
    vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>close<cr>", { noremap = true, silent = true })
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf" },
  callback = function(ev)
    local bufnr = ev.buf
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<tab>", "<cmd>cnext<cr>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<S-tab>", "<cmd>cprev<cr>", { noremap = true, silent = true })
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "DiffviewFiles", "DiffviewFileHistory" },
  callback = function(ev)
    local bufnr = ev.buf
    vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>DiffviewClose<cr>", { noremap = true, silent = true })
  end,
})

vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  -- pattern = { "grep", "vimgrep" },
  callback = function()
    vim.cmd.cwindow()
  end,
  desc = "Open quickfix window after grep",
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
  pattern = "*",
  desc = "Highlight yanked text",
  callback = function()
    vim.highlight.on_yank({ timeout = 200, visual = true, higroup = "IncSearch" })
  end,
})

-- restore cursor to file position in previous editing session
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  callback = function(args)
    local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
    local line_count = vim.api.nvim_buf_line_count(args.buf)
    if mark[1] > 0 and mark[1] <= line_count then
      vim.api.nvim_win_set_cursor(0, mark)
      -- defer centering slightly to so it's applied after render
      vim.schedule(function()
        vim.cmd("normal! zz")
      end)
    end
  end,
})

vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("active_cursorline", { clear = true }),
  callback = function()
    vim.opt_local.cursorline = true
  end,
})

vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = "active_cursorline",
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

--- highligh on hover
vim.api.nvim_create_autocmd("CursorMoved", {
  group = vim.api.nvim_create_augroup("LspReferenceHighlight", { clear = true }),
  desc = "Highlight references under cursor",
  callback = function()
    if vim.fn.mode() ~= "i" then
      local clients = vim.lsp.get_clients({ bufnr = 0 })
      local supports_highlight = false
      for _, client in ipairs(clients) do
        if client.server_capabilities.documentHighlightProvider then
          supports_highlight = true
          break -- found a supporting client, stop looking
        end
      end

      if supports_highlight then
        vim.lsp.buf.clear_references()
        vim.lsp.buf.document_highlight()
      end
    end
  end,
})

vim.api.nvim_create_autocmd("CursorMovedI", {
  group = "LspReferenceHighlight",
  desc = "Clear all references when entering insert mode",
  callback = function()
    vim.lsp.buf.clear_references()
  end,
})
