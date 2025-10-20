return {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
        vim.lsp.enable("lua_ls")
    end
}
