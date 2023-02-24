return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
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
      "lua",
      "markdown",
      "markdown_inline",
      "php",
      "prisma",
      "python",
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

  -- add jsonls and schemastore and set up treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },
}
