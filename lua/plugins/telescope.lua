-- local Util = require("lazyvim.Util")

return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
    init = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
      	builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end)
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
    -- keys = {
    --   {
    --     '<leader>pf',
    --     Util.telescope("files", { hidden = true, no_ignore = false }),
    --   },
    --   {
    --     '<C-p>',
    --     Util.telescope("files", { hidden = true, no_ignore = false }),
    --   },
    --   {
    --     '<leader>pf',
    --     Util.telescope("files", { hidden = true, no_ignore = false }),
    --   },

    --   vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    --   vim.keymap.set('n', '<leader>ps', function()
    --   	builtin.grep_string({ search = vim.fn.input("Grep > ") })
    --   end)
    --   vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    -- end
  },
}
