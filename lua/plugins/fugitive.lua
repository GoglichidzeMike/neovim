return {
  "tpope/vim-fugitive",
  cmd = {"G", "Git"},
  keys = {
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
    -- Add more key mappings here if desired
  },
  -- Optional: if you want to load fugitive when certain files are opened
  ft = {"gitcommit", "gitrebase"},
  -- Optional: if you want to load fugitive on startup
  -- lazy = false,
}
