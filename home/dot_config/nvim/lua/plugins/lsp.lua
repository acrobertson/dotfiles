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

  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = function()
  --     return {
  --       -- Additional LSP server setup
  --       ---@type table<string, fun(server: string, opts:_.lspconfig.options):boolean?>
  --       setup = {
  --         rust_analyzer = function(_, opts)
  --           require("rust-tools").setup({ server = opts })
  --         end,
  --       },
  --     }
  --   end,
  -- },

  { "simrat39/rust-tools.nvim" },
}
