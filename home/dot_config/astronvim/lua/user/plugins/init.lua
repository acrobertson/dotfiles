return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- You can also add new plugins here as well:
  -- Add plugins, the packer syntax without the "use"
  -- { "andweeb/presence.nvim" },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- We also support a key value style plugin definition similar to NvChad:
  -- ["ray-x/lsp_signature.nvim"] = {
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- Disable unneeded plugins
  ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },

  -- LSP helpers
  ["jose-elias-alvarez/typescript.nvim"] = require "user.plugins.typescript",
  ["simrat39/rust-tools.nvim"] = require "user.plugins.rust-tools",

  -- Telescope extensions
  ["nvim-telescope/telescope-file-browser.nvim"] = require "user.plugins.telescope-file-browser",
  ["nvim-telescope/telescope-live-grep-args.nvim"] = require "user.plugins.telescope-live-grep-args",

  -- Misc.
  ["echasnovski/mini.nvim"] = require "user.plugins.mini",
  ["EdenEast/nightfox.nvim"] = require "user.plugins.nightfox",
  ["phaazon/hop.nvim"] = require "user.plugins.hop",
  ["TimUntersberger/neogit"] = require "user.plugins.neogit",
}
