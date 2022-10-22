return {
  after = "telescope.nvim",
  module = "telescope._extensions.live_grep_args",
  config = function() require("telescope").load_extension "live_grep_args" end,
}
