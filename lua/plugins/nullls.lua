return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.gofmt,    -- For gofmt
        null_ls.builtins.formatting.buf,
        -- null_ls.builtins.formatting.goimports, -- Uncomment if you prefer goimports
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          -- Autoformat on save
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
