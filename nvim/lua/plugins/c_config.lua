return {
  {
    "jiangmiao/auto-pairs", -- auto add close bracket
  },
  {
    "tpope/vim-commentary", -- comment
  },
  {
    "folke/lsp-colors.nvim",
    config = function()
      require("lsp-colors").setup({
        Error = "#db4b4b",
        Warning = "#e0af68",
        Information = "#0db9d7",
        Hint = "#10B981",
      })
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = { "Trouble", "TroubleToggle" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client

    },
  },
}
