return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- language servers
        "astro-language-server",
        "clojure-lsp",
        "css-lsp",
        "deno",
        "dockerfile-language-server",
        "emmet-language-server",
        "eslint-lsp",
        "graphql-language-service-cli",
        "html-lsp",
        "intelephense",
        "json-lsp",
        "lua-language-server",
        "prisma-language-server",
        "pyright",
        "sqlls",
        "stylelint-lsp",
        "tailwindcss-language-server",
        "taplo",
        "twiggy-language-server",
        "typescript-language-server",
        "yaml-language-server",

        -- tools
        "flake8",
        "shellcheck",
        "shfmt",
        "stylua",
        "twigcs",
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
        emmet_language_server = {
          filetypes = {
            "astro",
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "php",
            "sass",
            "scss",
            "svelte",
            "pug",
            "typescriptreact",
            "vue",
          },
        },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                },
              },
            },
          },
        },
      },
    },
  },

  {
    "dmmulroy/ts-error-translator.nvim",
    config = function()
      require("ts-error-translator").setup()
    end,
  },

  { "jwalton512/vim-blade" },
}
