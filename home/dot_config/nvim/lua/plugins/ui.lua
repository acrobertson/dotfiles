return {
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
