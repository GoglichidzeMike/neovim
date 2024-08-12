return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local actions = require("diffview.actions")
    require("diffview").setup({
      keymaps = {
        view = {
          -- Add custom keymaps here for the view mode
          ["<leader>e"] = actions.toggle_files,
        },
        file_panel = {
          -- Add custom keymaps here for the file panel
          ["<leader>e"] = actions.toggle_files,
        },
        file_history_panel = {
          -- Add custom keymaps here for the file history panel
          ["<leader>e"] = actions.toggle_files,
        },
      },
    })

    -- Set up some keymaps
    vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory<CR>", { noremap = true, silent = true })
  end,
}
