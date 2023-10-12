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
        "twig",
        "typescript",
        "vim",

        -- git
        "diff",
        "git_rebase",
        "gitcommit",
        "gitignore",
      })
    end,
  },

  { "nvim-treesitter/playground" },
}
