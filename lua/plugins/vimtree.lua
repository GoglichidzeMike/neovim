return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      -- Add the necessary options for always showing the active file
      update_focused_file = {
        enable = true,  -- Highlight the active file in the tree
        update_root = false, -- Keep the root folder static
      },
      sync_root_with_cwd = true, -- Ensure the root is in sync with the current working directory
    }

    -- Existing keybindings
    vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>E', '<C-w>l', { noremap = true, silent = true })

    -- toggle sidebar
    vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    -- Optional: Add a keybinding to reveal the active file manually
    vim.keymap.set('n', '<leader>r', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
  end,
}
