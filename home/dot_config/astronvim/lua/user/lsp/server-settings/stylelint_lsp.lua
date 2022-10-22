local util = require("lspconfig").util

return {
  filetypes = {
    "css",
    "less",
    "sass",
    "scss",
    "sugarss",
    "vue",
    "wxss",
  },
  root_dir = util.root_pattern(
    ".stylelintrc",
    ".stylelintrc.json",
    ".stylelintrc.js",
    ".stylelintrc.yaml",
    ".stylelintrc.yml",
    "stylelint.config.js",
    "stylelint.config.cjs"
  ),
  settings = {
    stylelintplus = {
      autoFixOnSave = true,
    },
  },
  --   on_attach = function(client, bufnr)
  --     client.resolved_capabilities.document_formatting = false
  --   end
}
