-- LSP settings.

-- Setup neovim lua configuration
require('neodev').setup()

-- Setup mason so it can manage external tooling
require('mason').setup()

local defaults = require('mn.lsp.defaults');

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = defaults.on_attach,
})

vim.lsp.config('*', defaults.capabilities)
