return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.clang_format,
        -- null_ls.builtins.diagnostics.gccdiag,
        -- null_ls.builtins.formatting.lua_format,
        -- null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.formatting.astyle
      }
    })
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.INFO] = " ",
          [vim.diagnostic.severity.HINT] = " "
        }
      }
    })
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
  end
}
