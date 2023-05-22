return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
    opts = {
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "bash",
        "c",
        "clojure",
        "css",
        "help",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "kdl",
        "lua",
        "markdown",
        "markdown_inline",
        "norg",
        "php",
        "prisma",
        "python",
        "query",
        "regex",
        "rust",
        "scss",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
    -- config = function()
    --   -- TODO: figure out if this is doing anything
    --   -- require("nvim-treesitter.install").compilers = { "gcc-12" }
    -- end,
  },

  { "nvim-treesitter/playground" },
}
