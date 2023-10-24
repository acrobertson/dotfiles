return {
  -- TODO: use nvim-lint for twigcs
  -- No builtin avilable, so it'd need to be custom
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      -- Add `twigcs` for Twig
      table.insert(opts.sources, nls.builtins.diagnostics.twigcs)
    end,
  },
}
