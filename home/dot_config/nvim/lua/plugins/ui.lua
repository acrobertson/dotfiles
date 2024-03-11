return {
  { "akinsho/bufferline.nvim", enabled = false },

  {
    "nanozuki/tabby.nvim",
    event = "VimEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("tabby.tabline").use_preset("tab_only")
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      render = "wrapped-compact",
      timeout = 2000,
    },
  },
}
