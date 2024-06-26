return {
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest", "marilari88/neotest-vitest" },
    opts = function(_, opts)
      -- Jest adapter
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.ts",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      -- Vitest adapter
      table.insert(opts.adapters, require("neotest-vitest"))
    end,
  },
}
