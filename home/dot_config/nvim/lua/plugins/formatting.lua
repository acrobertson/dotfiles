return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      blade = { "prettier" },
      php = { "pint" },
    },
    formatters = {
      pint = {
        condition = function(ctx)
          return vim.fs.find({ "pint.json" }, { path = ctx.filename, upward = true })[1]
        end,
      },
    },
  },
}
