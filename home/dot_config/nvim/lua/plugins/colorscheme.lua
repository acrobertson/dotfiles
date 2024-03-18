return {
  {
    "cormacrelf/dark-notify",
    config = function()
      local dn = require("dark_notify")
      dn.run()
    end,
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },
}
