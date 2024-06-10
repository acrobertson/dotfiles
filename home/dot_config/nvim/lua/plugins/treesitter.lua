return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "css",
        "html",
        "kdl",
        "lua",
        "markdown_inline",
        "norg",
        "prisma",
        "python",
        "query",
        "regex",
        "scss",
        "twig",
        "vim",

        -- git
        "diff",
      })
    end,
  },

  { "nvim-treesitter/playground" },
}
