return {
  -- add LazyVim and import its plugins
  -- { "LazyVim/LazyVim" },
  -- import plugins
  { import = "plugins" },

  'nvim-treesitter/playground',
  'karb94/neoscroll.nvim',
  'eandrju/cellular-automaton.nvim',
  'sphamba/smear-cursor.nvim',
  'nvim-treesitter/nvim-treesitter-context',
  -- "ellisonleao/gruvbox.nvim",

  {
      'iamcco/markdown-preview.nvim',
      build = function() vim.fn["mkdp#util#install"]() end,
      init = function() 
          vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
  },
}
