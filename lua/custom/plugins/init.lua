-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {

      {
        's',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
    },
  },

  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'opens lazygit' })
    end,
  },

  {
    'roobert/search-replace.nvim',
    config = function()
      require('search-replace').setup {
        -- optionally ovesride defaults
        default_reslace_single_buffer_options = 'gci',
        default_replace_multi_buffer_options = 'egci',
      }
      vim.keymap.set('n', '<leader>rs', '<cmd>SearchReplaceSingleBufferOpen<cr>', { desc = 'search and replace in this buffer' })
    end,
  },

  {
    'Exafunction/codeium.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {
        enable_chat = true,
      }
    end,
  },
}
