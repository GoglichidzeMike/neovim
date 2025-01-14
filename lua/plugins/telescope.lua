return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      telescope.setup {
        defaults = {
          follow = true,  -- Follow symlinks (submodules)
          preview= false,
          mappings = {
            i = {
              ["<C-v>"] = actions.file_vsplit,
              ["<C-x>"] = actions.file_split,
            },
          },
        },
      pickers = {
         live_grep = {
           preview = true,
           follow = true,
           layout_strategy = 'vertical',
           layout_config = {
             preview_cutoff = 1,
             width = 0.9,
             height = 0.9,
           }
         }
       }        -- Add any other Telescope configurations here
      }
      -- Set up some keymaps
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', 'gs', builtin.git_bcommits, {})

      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader><space>', builtin.buffers, {})
      -- vim.keymap.set('n', '<leader>ps', function()
      --     builtin.grep_string({ search = vim.fn.input("Grep > ") })
      -- end)

      vim.keymap.set('n', '<leader>ps', function()
        require('telescope.builtin').live_grep()
      end, { desc = "Live grep in Telescope prompt" })vim.keymap.set('n', 'gd', function()

        require('telescope.builtin').lsp_definitions()
      end, { desc = 'Telescope LSP definitions' })

      vim.keymap.set('n', 'gr', function()
        require('telescope.builtin').lsp_references()
      end, { desc = 'Telescope LSP references' })
    end
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      -- Load the fzf extension after telescope is configured
      require('telescope').load_extension('fzf')
    end,
  },
}
