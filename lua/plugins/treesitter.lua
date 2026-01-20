return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,    -- README: does not support lazy-loading 
    build = ":TSUpdate",

    config = function()
      local config = require("nvim-treesitter.config")
      require 'treesitter-context'

      config.setup({
        ensure_installed = {
          "bash",
          "c",
          "diff",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "printf",
          "python",
          "query",
          "regex",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
          "go",
          "rust",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        additional_vim_regex_highlighting = false,
      })
    end,
  },

  { "nvim-treesitter/playground", enabled = false },
}
