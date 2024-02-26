return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local custom_lualine = require"custom_lualine"
    require("lualine").setup{
      options = {
        theme = custom_lualine,
      },
    }
  end,
}
