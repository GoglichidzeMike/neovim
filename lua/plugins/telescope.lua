return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    
    telescope.setup{
      defaults = {
        mappings = {
          i = {
            ["<C-v>"] = actions.file_vsplit,
            ["<C-x>"] = actions.file_split,
          },
        },
      },
      -- Add any other Telescope configurations here
    }
    
    -- Set up some keymaps
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader><space>', builtin.buffers, {})
    vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
  end
}
