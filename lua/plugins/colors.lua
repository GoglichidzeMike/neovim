 -- return {
 --   {
 --     "marko-cerovac/material.nvim",
 --     lazy = false,  -- make sure we load this during startup if it is your main colorscheme
 --     priority = 1000, -- make sure to load this before all the other start plugins
 --     config = function()
 --       -- vim.g.material_style = "darker"  -- Choose the variant you want: 'darker', 'lighter', 'oceanic', 'palenight', or 'deep ocean'
 --       vim.g.material_style = "palenight"  -- Choose the variant you want: 'darker', 'lighter', 'oceanic', 'palenight', or 'deep ocean'
 --       vim.cmd([[colorscheme material]])
 --     end,
 --   },
 -- }
--
-- return {
--   "oxfist/night-owl.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     -- load the colorscheme here
--     require("night-owl").setup({
--        bold = false,
--        italics = false,
--        underline = true,
--        undercurl = true,
--        transparent_background = false,
--     })
--     vim.cmd.colorscheme("night-owl")

--   end,
-- }

return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load the colorscheme immediately
    priority = 1000, -- Ensure it loads first
    config = function()
      require("tokyonight").setup({
        style = "moon", -- Set the style to "moon"
        transparent = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          functions = { italic = false },
          variables = { italic = false },
        },
        sidebars = { "qf", "help", "terminal" }, -- Apply different styling for sidebars
        dim_inactive = true, -- Dim inactive windows
      })

      -- Apply the colorscheme
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
