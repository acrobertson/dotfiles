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
        "twigcs",
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
        emmet_language_server = {
          filetypes = {
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
      },
    },
  },

  { "jwalton512/vim-blade" },

  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      -- Add `blade` to default prettier filetypes
      table.insert(
        opts.sources,
        nls.builtins.formatting.prettierd.with({
          extra_filetypes = { "blade" },
        })
      )
      -- Add `pint` for Laravel
      table.insert(opts.sources, nls.builtins.formatting.pint)

      -- Add `twigcs` for Twig
      table.insert(opts.sources, nls.builtins.diagnostics.twigcs)
    end,
  },
}
