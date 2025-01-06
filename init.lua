require("mike.lazy")
require("mike")

-- Set the working directory to the current file
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd("lcd " .. vim.fn.expand("%:p:h"))
    end,
})

-- vim.cmd [[
--   autocmd TabEnter * silent! lcd %:p:h
-- ]]
