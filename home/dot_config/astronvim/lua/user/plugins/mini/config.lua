require("mini.jump").setup()
require("mini.surround").setup()

local gen_spec = require("mini.ai").gen_spec
require("mini.ai").setup {
  custom_textobjects = {
    ["*"] = gen_spec.pair("*", "*", { type = "greedy" }),
    ["_"] = gen_spec.pair("_", "_", { type = "greedy" }),
    F = gen_spec.treesitter { a = "@function.outer", i = "@function.inner" },
    x = gen_spec.treesitter { a = "@class.outer", i = "@class.inner" },
  },
}
