local util = require("lspconfig").util

return {
  -- Only init if a config file exists
  root_dir = util.root_pattern("deno.json", "deno.jsonc"),
}
