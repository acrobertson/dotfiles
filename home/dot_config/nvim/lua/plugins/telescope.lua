return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      { "nvim-telescope/telescope-file-browser.nvim" }
    },
    opts = {
      extensions = {
        file_browser = {
          select_buffer = true,
          hidden = true,
          respect_gitignore = false,
        }
      }
    },
    config = function (_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
      telescope.load_extension("file_browser")
    end
  },
}
