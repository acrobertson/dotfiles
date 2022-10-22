return {
  after = "telescope.nvim",
  module = "telescope._extensions.file_browser",
  config = function() require("telescope").load_extension "file_browser" end,
}
