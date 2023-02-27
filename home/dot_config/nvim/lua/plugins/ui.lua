return {
  -- set bg color for transparent colorscheme
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#1a1b26",
    },
  },

  -- disable indent plugins if nolist is set
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      disable_with_nolist = true,
    },
  },
  {
    "echasnovski/mini.indentscope",
    cond = vim.opt.list:get(),
  },
}
