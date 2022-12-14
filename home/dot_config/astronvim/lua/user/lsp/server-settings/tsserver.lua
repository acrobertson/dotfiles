local util = require("lspconfig").util

return {
  -- Only init if a config file exists
  root_dir = util.root_pattern "package.json",
}
