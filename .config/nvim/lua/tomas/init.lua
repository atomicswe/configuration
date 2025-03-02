require("tomas.remap")
require("tomas.set")
require("tomas.lazy_init")
require("tomas.lazy.colors")

local autocmd = vim.api.nvim_create_autocmd
autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf, noremap = true, silent = true }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
        vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "<leader>gn", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "<leader>gp", function() vim.diagnostic.goto_prev() end, opts)
    end
})
