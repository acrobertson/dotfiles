return function(highlights) -- or a function that returns a new table of colors to set
  local C = require "default_theme.colors"

  highlights.Normal = { fg = C.fg, bg = C.bg }
  return highlights
end
