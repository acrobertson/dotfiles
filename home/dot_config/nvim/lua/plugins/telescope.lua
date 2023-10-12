return {
  {
    "telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-file-browser.nvim" },
      { "debugloop/telescope-undo.nvim" },
    },
    opts = {
      extensions = {
        file_browser = {
          select_buffer = true,
          hidden = true,
          respect_gitignore = false,
        },
        undo = {
          use_delta = true,
          side_by_side = true,
          layout_strategy = "vertical",
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("file_browser")
      telescope.load_extension("undo")
    end,
  },
}
