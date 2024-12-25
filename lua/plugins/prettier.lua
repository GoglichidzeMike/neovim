return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier.with({
          filetypes = {"javascript", "typescript", "typescriptreact", "css", "scss", "html", "json", "yaml", "markdown"},
          prefer_local = "node_modules/.bin",
        }),
      },
      debug = true,
    })

    -- Set up format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function()
    -- Run Prettier first
    vim.lsp.buf.format({
      timeout_ms = 2000,
      filter = function(client)
        return client.name == "null-ls"
      end,
    })
    -- Then run ESLint fix
    vim.cmd("EslintFixAll")
  end,
})
  end,
  dependencies = {"nvim-lua/plenary.nvim"}
}
