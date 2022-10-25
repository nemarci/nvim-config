local ls = require('luasnip')

ls.add_snippets("rust", {ls.parser.parse_snippet("cr", "// CODE_REVIEW by @mn\n// ")})

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/mn/snip/snippets.lua<CR>")
