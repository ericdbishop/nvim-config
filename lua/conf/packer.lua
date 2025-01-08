-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  'tanvirtin/monokai.nvim',
	  as = 'monokai',
	  config = function()
		  require('monokai').setup {}
		  require('monokai').setup { palette = require('monokai').pro }
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use("nvim-treesitter/playground")

  -- use {'nvim-orgmode/orgmode', config = function()
    -- require('orgmode').setup{}
  -- end
  -- }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'karb94/neoscroll.nvim'
  use("nvim-treesitter/playground")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("lervag/vimtex")
  use("eandrju/cellular-automaton.nvim")
  use("sphamba/smear-cursor.nvim")
  use("WhoIsSethDaniel/toggle-lsp-diagnostics.nvim")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v1.x',
          requires = {
                  -- LSP Support
                  {'neovim/nvim-lspconfig'},
                  {'williamboman/mason.nvim'},
                  {'williamboman/mason-lspconfig.nvim'},

                  -- Autocompletion
                  {'hrsh7th/nvim-cmp'},
                  {'hrsh7th/cmp-buffer'},
                  {'hrsh7th/cmp-path'},
                  {'saadparwaiz1/cmp_luasnip'},
                  {'hrsh7th/cmp-nvim-lsp'},
                  {'hrsh7th/cmp-nvim-lua'},

                  -- Snippets
                  {'L3MON4D3/LuaSnip'},
                  {'rafamadriz/friendly-snippets'},
          }
  }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

-- Load custom treesitter grammar for org filetype
-- require('orgmode').setup_ts_grammar()

-- Treesitter configuration
-- require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  -- highlight = {
    -- enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    -- additional_vim_regex_highlighting = {'org'},
  -- },
  -- ensure_installed = {'org'}, -- Or run :TSUpdate org
-- }

-- require('orgmode').setup({
  -- org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
  -- org_default_notes_file = '~/Dropbox/org/refile.org',
-- })

end)
