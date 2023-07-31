return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
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
        "twig",
        "typescript",
        "vim",
        "yaml",

        -- git
        "diff",
        "git_rebase",
        "gitcommit",
        "gitignore",
      })
    end,
    config = function()
      require("nvim-ts-autotag").setup({
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = false,
      })
    end,
  },

  { "nvim-treesitter/playground" },
}
