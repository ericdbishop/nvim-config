return {
    {
        'tanvirtin/monokai.nvim',
        name = 'monokai',
        init = function()
  	      require('monokai').setup {}
  	      require('monokai').setup { palette = require('monokai').pro }
          require('monokai').setup({
              disable_background = true
          })
          
          function ColorMyPencils(color) 
          	color = color or "monokai"
          	vim.cmd.colorscheme(color)
          
          	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
          end
          
          ColorMyPencils()
        end
    },
}

