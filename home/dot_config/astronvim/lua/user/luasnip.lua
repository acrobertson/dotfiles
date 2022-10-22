-- Load our lua snippets
-- Astro Nvim will handle the VSCode snippets with the options below
require("luasnip.loaders.from_lua").lazy_load { paths = "./lua/user/snippets/lua" }

-- LuaSnip Options
return {
  -- Add paths for including more VS Code style snippets in luasnip
  vscode_snippet_paths = { "./lua/user/snippets/vscode" },
  -- Extend filetypes
  filetype_extend = {
    javascript = { "javascriptreact" },
    typescript = { "typescriptreact" },
  },
}
