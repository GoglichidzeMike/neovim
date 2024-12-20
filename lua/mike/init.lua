require("mike.remap")
require("mike.set")

require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})
vim.opt.clipboard:append("unnamedplus")
vim.opt.termguicolors = true
