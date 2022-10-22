local fb_actions = require("telescope").extensions.file_browser.actions

return {
  defaults = {
    file_ignore_patterns = {
      "^.git/",
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
