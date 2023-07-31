return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- language servers
        "clojure-lsp",
        "css-lsp",
        "deno",
        "dockerfile-language-server",
        "emmet-language-server",
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
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        cssls = {
          settings = {
            css = {
              lint = {
                unknownAtRules = "ignore",
              },
            },
          },
        },
        stylelint_lsp = {
          filetypes = {
            "css",
            "less",
            "scss",
            "sugarss",
            "vue",
            "wxss",
          },
          settings = {
            -- helps stylelint find the eslintrc when it's placed in a subfolder instead of the cwd root
            workingDirectory = { mode = "auto" },
            stylelintplus = {
              autoFixOnFormat = true,
              autoFixOnSave = true,
            },
          },
        },
      },
    },
  },
}
