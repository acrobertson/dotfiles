return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- language servers
        "clojure-lsp",
        "css-lsp",
        "deno",
        "dockerfile-language-server",
        -- "emmet-ls",
        "eslint-lsp",
        -- "graphql-language-service-cli",
        "html-lsp",
        "intelephense",
        "json-lsp",
        "lua-language-server",
        "marksman",
        "prisma-language-server",
        "pyright",
        "rust-analyzer",
        "sqlls",
        "stylelint-lsp",
        "tailwindcss-language-server",
        "taplo",
        "typescript-language-server",
        "yaml-language-server",

        -- tools
        "flake8",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },
}
