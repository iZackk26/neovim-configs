
local servers = {
    "gopls",
    "pyright",
    "lua_ls",
    "clangd",
    "jdtls",
    "texlab",
    "emmet_ls",
    "ts_ls",
    "hls",
    "efm",
    "tailwindcss",
    "volar",
    "prolog_ls"
}

local function on_attach(client, bufnr)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references)
    vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

end

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp'
    },

    config = function()
        local success, capabilities = pcall(require, "cmp_nvim_lsp")
        if not success then return end
        capabilities = capabilities.default_capabilities()

        local ok, lspconfig = pcall(require, "lspconfig")
        if not ok then return end

        -- Configuración para Volar (Vue.js)
        lspconfig.volar.setup {
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
            init_options = {
                typescript = {
                    serverPath = vim.fn.glob("node_modules/.bin/tsserver", 1) or "tsserver",
                },
            },
        }

        -- Configuración para Tailwind CSS
        lspconfig.tailwindcss.setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                tailwindCSS = {
                    experimental = {
                        classRegex = { 'tw`([^`]*)', 'tw="([^"]*)', 'tw={"([^"}]*)' }
                    },
                },
            },
        }

        for _, server in ipairs(servers) do
            lspconfig[server].setup {
                capabilities = capabilities,
                on_attach = on_attach,
                flags = {
                    debounce_text_changes = 150,
                },
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            globals = { 'vim' },
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                    Python = {
                        analysis = {
                            typeCheckingMode = "basic",
                            autoSearchPaths = true,
                            useLibraryCodeForTypes = true,
                            reportOptionalCall = false,
                            reportOptionalOperand = false,
                            reportUnboundVariable = false, 
                            reportGeneralTypeIssues = false,     
                            reportOptionalSubscript = false,     
                            reportOptionalMemberAccess = false,  
                            reportOptionalCall = false,
                        },
                        pythonFormatter = {
                            provideFormatter = true,
                            pythonFormatter = "black",
                        },
                        diagnosticMode = "workspace",
                    },
                },
            }
        end
    end
}

