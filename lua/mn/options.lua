-- line numbering
vim.o.number = true
vim.o.relativenumber = true

vim.g.python3_host_prog = "/usr/bin/python3"

vim.cmd("colorscheme gruvbox") -- I haven't found a way to do this in Lua

-- Show diagnostics on hover, after `vim.o.updatetime` milliseconds
vim.o.updatetime=300
local group = vim.api.nvim_create_augroup("hover", {clear = true})
vim.api.nvim_create_autocmd("CursorHold", {
    pattern = "*",
    callback = function()
        vim.diagnostic.open_float(nil, {focus=false})
    end,
    group = group,
})
