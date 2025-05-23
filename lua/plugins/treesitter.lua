return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    config = function()
      local configs = (require'nvim-treesitter.configs')

      configs.setup({
        highlight = { enable = true },
        indent = { enable = true },
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
          "javascript",
          "jsonnet",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
        textobjects = {
          move = {
            enable = true,
            goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
            goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
            goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
            goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
          },
        },
      })
    end
  },
}
