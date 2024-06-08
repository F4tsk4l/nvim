local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
require("lsp-format").setup {}

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    require("lsp-format").on_attach(client, bufnr)
    -- lsp_zero.buffer_autoformat()
end)
require("lspconfig").gopls.setup { on_attach = on_attach }

lsp_zero.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { 'lua_ls', 'jedi_language_server', 'clangd', 'markdown_oxide' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    }
})
-- Default KEYBINDINGS lsp_zero
-- Here's the list of available keybindings:
-- K: Displays hover information about the symbol under the cursor in a floating window. See :help vim.lsp.buf.hover().
-- 
-- gd: Jumps to the definition of the symbol under the cursor. See :help vim.lsp.buf.definition().
-- 
-- gD: Jumps to the declaration of the symbol under the cursor. Some servers don't implement this feature. See :help vim.lsp.buf.declaration().
-- 
-- gi: Lists all the implementations for the symbol under the cursor in the quickfix window. See :help vim.lsp.buf.implementation().
-- 
-- go: Jumps to the definition of the type of the symbol under the cursor. See :help vim.lsp.buf.type_definition().
-- 
-- gr: Lists all the references to the symbol under the cursor in the quickfix window. See :help vim.lsp.buf.references().
-- 
-- gs: Displays signature information about the symbol under the cursor in a floating window. See :help vim.lsp.buf.signature_help(). If a mapping already exists for this key this function is not bound.
-- 
-- <F2>: Renames all references to the symbol under the cursor. See :help vim.lsp.buf.rename().
-- 
-- <F3>: Format code in current buffer. See :help vim.lsp.buf.format().
-- 
-- <F4>: Selects a code action available at the current cursor position. See :help vim.lsp.buf.code_action().
-- 
-- gl: Show diagnostics in a floating window. See :help vim.diagnostic.open_float().
-- 
-- [d: Move to the previous diagnostic in the current buffer. See :help vim.diagnostic.goto_prev().
-- 
-- ]d: Move to the next diagnostic. See :help vim.diagnostic.goto_next().
-- 
-- By default lsp-zero will not create a keybinding if its "taken". This means if you already use one of these in your config, or some other plugins uses it (which-key might be one), then lsp-zero's bindings will not work.
-- 
-- You can force lsp-zero's bindings by adding preserve_mappings = false to .default_keymaps().
