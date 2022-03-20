vim.g.mapleader = ","
vim.g.maplocalleader = "-"

vim.keymap.set('n', '<leader>t', require("rust-tools.inlay_hints").toggle_inlay_hints, {})
vim.keymap.set('n', '<leader>e', require("rust-tools.expand_macro").expand_macro, {})

-- Code navigation shortcuts
-- as found in :help lsp
vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.implementation, {})
vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, {})
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', 'gn', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'g0', vim.lsp.buf.document_symbol, {})
vim.keymap.set('n', 'gW', vim.lsp.buf.workspace_symbol, {})
-- rust-analyzer does not yet support goto declaration
-- re-mapped `gd` to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
--- vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, {})
vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev, {})
vim.keymap.set('n', 'g]', vim.diagnostic.goto_next, {})

-- TODO: reimplement these in lua, if needed
-- Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

-- Telescope mappings


vim.keymap.set('n', "<leader>o", "<cmd>Telescope find_files<CR>", {})
vim.keymap.set('n', "<leader>f", "<cmd>Telescope live_grep<CR>", {})
vim.keymap.set('n', "<leader>b", "<cmd>Telescope buffers<CR>", {})
vim.keymap.set('n', "<leader>d", "<cmd>Telescope diagnostics<CR>", {})

-- Just for testing
-- vim.keymap.set('n', '<leader>b', function() print("foo"); end, {})
