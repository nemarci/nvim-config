local rt = require("rust-tools")

local defaults = require('mn.lsp.defaults');

rt.setup({
  tools = {
    -- rust-tools options
    -- automatically set inlay hints (type hints)
    -- There is an issue due to which the hints are not applied on the first
    -- opened file. For now, write to the file to trigger a reapplication of
    -- the hints or just run :RustSetInlayHints.
    -- default: true
    autoSetHints = true,
    runnables = {
      -- whether to use telescope for selection menu or not
      -- default: true
      use_telescope = true
      -- rest of the opts are forwarded to telescope
    },
    inlay_hints = {
      -- wheter to show parameter hints with the inlay hints or not
      -- default: true
      show_parameter_hints   = true,
      -- prefix for parameter hints
      -- default: "<-"
      parameter_hints_prefix = "<-",
      -- prefix for all the other hints (type, chaining)
      -- default: "=>"
      other_hints_prefix     = "=>",
      -- whether to align to the lenght of the longest line in the file
      max_len_align          = false,
      -- padding from the left if max_len_align is true
      max_len_align_padding  = 1,
      -- whether to align to the extreme right or not
      right_align            = false,
      -- padding from the right if right_align is true
      right_align_padding    = 7,
    },
    hover_actions = {
      -- the border that is used for the hover window
      -- see vim.api.nvim_open_win()
      border = {
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" }
      },
    }
  },
  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
  server = {
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy"
        }
      },
    },
    capabilities = defaults.capabilities,
    on_attach = function(client, bufnr)
      defaults.on_attach(client, bufnr)
      vim.keymap.set("n", "<leader>ha", rt.hover_actions.hover_actions, { buffer = bufnr, desc = "[H]over [A]ctions" })
      vim.keymap.set("n", "<leader>cg", rt.code_action_group.code_action_group,
        { buffer = bufnr, desc = "[C]ode Action [G]roup" })
      vim.keymap.set('n', '<leader>i', rt.inlay_hints.enable, { buffer = bufnr, })
      vim.keymap.set('n', '<leader>I', rt.inlay_hints.disable, { buffer = bufnr, })
      vim.keymap.set('n', '<leader>em', rt.expand_macro.expand_macro,
        { buffer = bufnr, desc = "[E]xpand [M]acro" })
      vim.keymap.set('n', '<leader>rr', rt.runnables.runnables, { buffer = bufnr, desc = "[R]ust [R]unnables" })
      vim.keymap.set('n', '<leader>rd', rt.debuggables.debuggables, { buffer = bufnr, desc = "[R]ust [D]ebuggables" })
    end,
  }, -- rust-analyer options
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter("/usr/lib/codelldb/adapter/codelldb",
      "/usr/lib/codelldb/lldb/lib/liblldb.so")
  }
})
