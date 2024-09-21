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
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    vim.keymap.set('n', '<leader>g', ':LazyGit<CR>', { desc = 'opens lazygit' }),
  },

  {
    'roobert/search-replace.nvim',
    config = function()
      require('search-replace').setup {
        -- optionally override defaults
        default_replace_single_buffer_options = 'gci',
        default_replace_multi_buffer_options = 'egci',
      }
    end,
    vim.keymap.set('n', '<leader>rs', '<cmd>searchreplacesinglebufferselections<cr>', { desc = 'search and replace in this buffer' }),
  },
}
