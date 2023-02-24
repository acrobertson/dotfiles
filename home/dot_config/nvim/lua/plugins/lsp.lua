return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- language servers
        "clojure-lsp",
        "css-lsp",
        -- "deno",
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
        "prettier",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = function()
        local lazyvim_util = require("lazyvim.util")
        -- local lspconfig_util = require("lspconfig.util")

        return {
          -- LSP server settings
          ---@type lspconfig.options
          -- servers = {
          --   denols = {
          --     root_dir = lspconfig_util.root_pattern("deno.json", "deno.jsonc"),
          --   },
          --   tsserver = {
          --     settings = {
          --       root_dir = lspconfig_util.root_pattern("package.json"),
          --     },
          --   },
          -- },

          -- Additional LSP server setup
          ---@type table<string, fun(server: string, opts:_.lspconfig.options):boolean?>
          setup = {
            tsserver = function(_, opts)
              lazyvim_util.on_attach(function(client)
                -- disable formatting for tsserver so prettier can handle it
                if client.name == "tsserver" then
                  -- client.server_capabilities.documentFormattingProvider = false
                  opts.capabilities.documentFormattingProvider = false
                end
              end)
              -- require("typescript").setup({ server = opts })
              -- return true
            end,
          },
        }
     end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function (_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        nls.builtins.formatting.prettier
      })
    end
  },

  -- Include extra specs to properly setup lspconfig, treesitter, mason and typescript.nvim
  { import = "lazyvim.plugins.extras.lang.typescript" },
}
