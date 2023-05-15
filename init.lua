-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ' '

require("mn.plugins")
require("mn.options")
require("mn.misc")
require("mn.telescope")
require("mn.treesitter")
require("mn.lsp")
require("mn.completion")
require("mn.snippets")
require("mn.rust")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
