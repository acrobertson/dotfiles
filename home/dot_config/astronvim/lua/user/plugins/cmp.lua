return function(opts)
  local cmp = require "cmp"
  local luasnip = require "luasnip"

  -- Don't use tab for cmp selection
  -- Gets in the way of snippet navigation
  opts.mapping["<TAB>"] = cmp.mapping(function(fallback)
    if luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    else
      fallback()
    end
  end, {
    "i",
    "s",
  })

  opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
    if luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, {
    "i",
    "s",
  })

  return opts
end
