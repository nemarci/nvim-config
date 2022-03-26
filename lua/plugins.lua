
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Auto completion engine
  use 'hrsh7th/nvim-cmp'

  -- Auto completion sources
  use {'hrsh7th/cmp-buffer', requires = {'hrsh7th/nvim-cmp'}}
  use {'hrsh7th/cmp-cmdline', requires = {'hrsh7th/nvim-cmp'}}
  use {'hrsh7th/cmp-nvim-lsp', requires = {'hrsh7th/nvim-cmp'}}
  use {'hrsh7th/cmp-path', requires = {'hrsh7th/nvim-cmp'}}
  use {'saadparwaiz1/cmp_luasnip', requires = {'hrsh7th/nvim-cmp'}}

  -- Colorschemes
  use {'morhetz/gruvbox'}

  -- LSP configuration
  use {'neovim/nvim-lspconfig'}

  -- Convenience plugin for Rust
  use {'simrat39/rust-tools.nvim', requires = {'neovim/nvim-lspconfig'}}

  -- Fuzzy finder
  use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- Telescope addons
  use {'nvim-telescope/telescope-file-browser.nvim', requires = {'nvim-telescope/telescope.nvim'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', requires = {'nvim-telescope/telescope.nvim'}, run = 'make'}
  use {'nvim-telescope/telescope-ui-select.nvim', requires = {'nvim-telescope/telescope.nvim'}}

  -- Snippet engined
  use {'L3MON4D3/LuaSnip'}

  -- Snippets
  use {'honza/vim-snippets', requires = {'L3MON4D3/LuaSnip'}}

  -- LaTeX plugin
  use {'lervag/vimtex'}

  -- Debugger Adapter Protocol client
  use {'mfussenegger/nvim-dap'}
  -- Debugger UI
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  
  -- Maybe needed?
  -- use {'folke/lsp-colors.nvim'}
  -- use {'nvim-lua/lsp_extensions.nvim'}
  -- use {'nvim-treesitter/nvim-treesitter'}
  -- use {'nvim-lua/plenary.nvim'} -- dependency for telescope

  -- Git
  use { "tpope/vim-fugitive" }
  use { "lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"} }

  -- Statusline
  use { 'feline-nvim/feline.nvim' }

  end
)
