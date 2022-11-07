local builtin_actions = require "telescope.actions"
local fb_actions = require("telescope").extensions.file_browser.actions

return {
  defaults = {
    file_ignore_patterns = {
      "^.git/",
    },
  },
  mappings = {
    i = {
      ["<C-s>"] = builtin_actions.select_horizontal,
    },
    n = {
      ["<C-s>"] = builtin_actions.select_horizontal,
    },
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<C-x>"] = builtin_actions.delete_buffer,
        },
        n = {
          ["x"] = builtin_actions.delete_buffer,
        },
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      mappings = {
        i = {
          ["<C-z>"] = fb_actions.toggle_hidden,
        },
        n = {
          z = fb_actions.toggle_hidden,
        },
      },
      select_buffer = true,
      hidden = true,
      respect_gitignore = false,
      hijack_netrw = true,
    },
    live_grep_args = {
      auto_quoting = true,
    },
  },
}
