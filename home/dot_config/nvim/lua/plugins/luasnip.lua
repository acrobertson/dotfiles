return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_lua").lazy_load({ paths = "./lua/snippets" })
    end,
    opts = {
      filetype_extend = {
        javascript = { "javascriptreact" },
        typescript = { "typescriptreact" },
      },
      update_events = "TextChanged,TextChangedI",
    },
  },
}
