local function trim_trailing_newline(s)
    if s:sub(-1) == "\n" then
        return s:sub(1, -2)
    end
    return s
end

return {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
        local servers = { "lua_ls", "vtsls", "vue_ls", "v_analyzer" }
        for _, server in ipairs(servers) do
            if server == "vue_ls" then
                local ok, result = pcall(vim.system,
                    { "npm", "list", "-g", "--parseable", "@vue/language-server" }, { text = true })
                if ok then
                    local run_result = result:wait()
                    -- trim the \n charater
                    local vue_language_server_path = trim_trailing_newline(run_result.stdout)
                    print(vue_language_server_path)
                    local vue_plugin = {
                        name = '@vue/typescript-plugin',
                        location = vue_language_server_path,
                        languages = { 'vue' },
                        configNamespace = 'typescript',
                    }
                    vim.lsp.config('vtsls', {
                        settings = {
                            vtsls = {
                                tsserver = {
                                    globalPlugins = {
                                        vue_plugin,
                                    },
                                },
                            },
                        },
                        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
                    })
                end
            else
                vim.lsp.enable(server)
            end
        end
    end
}
