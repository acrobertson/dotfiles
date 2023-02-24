---@diagnostic disable: undefined-global

-- Function node callback to append user args to the watched node value
local function append_args_to_input(args, _, user_args)
  local val = args[1][1]
  if user_args ~= nil then
    val = val .. user_args
  end
  return val
end

-- Returns a `snippet_node` wrapped around an `insertNode`
-- whose initial text value is set to the current filename
local filename_input = function(_, snip, _, fallback)
  local initial = snip.env.TM_FILENAME_BASE or fallback
  return sn(nil, i(1, initial))
end

return {
  s(
    {
      trig = "efc",
      name = "Exported React Component",
      dscr = "Create a React function component as an export with a props interface",
    },
    fmt(
      [[
    interface {props_interface} {{
      {props_types}
    }}

    export function {component} ({{{props}}}: {comp_props_type}) {{
      return (
        {children}
      );
    }}
    ]],
      {
        props_interface = f(append_args_to_input, { 1 }, { user_args = { "Props" } }),
        props_types = i(2),
        component = d(1, filename_input, {}, { user_args = { "Component" } }),
        props = i(3),
        comp_props_type = f(append_args_to_input, { 1 }, { user_args = { "Props" } }),
        children = i(0),
      }
    )
  ),
}
