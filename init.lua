require("mike.lazy")
require("mike")


vim.cmd [[
  autocmd TabEnter * silent! lcd %:p:h
]]
