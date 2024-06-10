return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "c",
        "clojure",
        "css",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "kdl",
        "lua",
        "markdown",
        "markdown_inline",
        "norg",
        "prisma",
        "python",
        "query",
        "regex",
        "rust",
        "scss",
        "tsx",
        "twig",
        "typescript",
        "vim",

        -- git
        "diff",
      })
    end,
  },

  { "nvim-treesitter/playground" },
}
