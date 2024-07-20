return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "folke/neodev.nvim",

        },
        config = function()
            vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
            vim.keymap.set('n', '<space>dp', vim.diagnostic.goto_prev)
            vim.keymap.set('n', '<space>dn', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

            local on_attach = function(_, bufnr)
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
                vim.keymap.set("n", "<space>Wa", vim.lsp.buf.add_workspace_folder, opts)
                vim.keymap.set("n", "<space>Wr", vim.lsp.buf.remove_workspace_folder, opts)


                vim.keymap.set("n", "K", vim.lsp.buf.hover,
                    { buffer = 0, desc = "LSP Help information of symbol under the cursor" })
                vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename,
                    { buffer = 0, desc = "LSP Rename symbol under cursor" })
                vim.keymap.set("i", "<c-h>", vim.lsp.buf.signature_help, { buffer = 0, desc = "LSP Signature help" })
                vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true, desc = "LSP Restart Server" })
                vim.keymap.set({ "n", "v" }, "<leader>vca", vim.lsp.buf.code_action,
                    { buffer = 0, desc = "LSP Code actions" })
            end

            require("neodev").setup()
            require("lspconfig").lua_ls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
            require("lspconfig").pyright.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
            require("lspconfig").cssls.setup({})
            require("lspconfig").css_variables.setup({})
            require("lspconfig").diagnosticls.setup({})
            require("lspconfig").emmet_language_server.setup({})
            require("lspconfig").emmet_ls.setup({})
            require("lspconfig").html.setup({})
            require("lspconfig").jinja_lsp.setup({})
            require("lspconfig").tailwindcss.setup({})
            require("lspconfig").vimls.setup({})
            require("lspconfig").tsserver.setup({})
        end
    },
}
