return {
  'akinsho/toggleterm.nvim',
  version = "*", -- Automatically picks the latest stable version
  config = function()
    require("toggleterm").setup({
      -- Add any custom options here
      open_mapping = [[<C-\>]], -- Default toggle keybinding
      direction = "float",      -- Can be "vertical", "horizontal", "tab", or "float"
      float_opts = {
        border = "curved",     -- Border style: "single", "double", "curved", etc.
      },
    })
  end,
}
