return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x", -- Always use the latest stable version
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Optional: for file icons
    "MunifTanjim/nui.nvim",        -- Required for Neo-tree
  },
  config = function()
    require("neo-tree").setup({
      hide_root_node = true, -- Hide the root node.
      retain_hidden_root_indent = false, -- IF the root node is hidden, keep the indentation anyhow.
      close_if_last_window = false, -- Close Neo-tree when it's the last window
      popup_border_style = "rounded", -- Rounded borders for the floating window
      enable_git_status = true, -- Show git status icons
      enable_diagnostics = true, -- Show diagnostics in the tree
      filesystem = {
        filtered_items = {
          hide_dotfiles = false, -- Show dotfiles
          hide_gitignored = false, -- Hide git-ignored files
          hide_by_name = { "node_modules" }, -- Hide specific directories
        },
        follow_current_file = true, -- Automatically focus the current file
        hijack_netrw_behavior = "open_default", -- Replace netrw
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none", -- Disable default space behavior
          ["s"] = "open_split", -- Open in a horizontal split
          ["v"] = "open_vsplit", -- Open in a vertical split
          ["C"] = "close_node", -- Close the current directory node
          ["R"] = "refresh", -- Refresh the tree
        },
      },
    })

    -- Keybinding to toggle Neo-tree
    vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>", { noremap = true, silent = true })
  end,
}
