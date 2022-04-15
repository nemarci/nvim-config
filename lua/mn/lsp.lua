-- LSP setup
local nvim_lsp = require('lspconfig')

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "ccls", "gopls", "texlab", "kotlin_language_server" }
for _, lsp in ipairs(servers) do
  -- nvim_lsp[lsp].setup { capabilities = capabilities, on_attach = on_attach }
  -- do not turn on auto completion here, since it is turned on globally
  nvim_lsp[lsp].setup { capabilities = capabilities }
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

