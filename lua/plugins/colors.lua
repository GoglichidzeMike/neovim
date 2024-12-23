 return {
   {
     "marko-cerovac/material.nvim",
     lazy = false,  -- make sure we load this during startup if it is your main colorscheme
     priority = 1000, -- make sure to load this before all the other start plugins
     config = function()
       -- vim.g.material_style = "darker"  -- Choose the variant you want: 'darker', 'lighter', 'oceanic', 'palenight', or 'deep ocean'
       vim.g.material_style = "palenight"  -- Choose the variant you want: 'darker', 'lighter', 'oceanic', 'palenight', or 'deep ocean'
       vim.cmd([[colorscheme material]])
     end,
   },
 }
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
