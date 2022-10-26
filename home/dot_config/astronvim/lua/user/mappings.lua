-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- git
    -- replace lazygit with neogit
    ["<leader>gg"] = { "<cmd>Neogit<cr>", desc = "Neogit status" },

    -- telescope
    ["<leader>f."] = { "<cmd>Telescope file_browser path=%:p:h<cr>", desc = "Browse this directory's files" },
    ["<leader>ff"] = {
      function()
        require("telescope.builtin").find_files { hidden = true }
      end,
      desc = "Search files",
    },
    ["<leader>fw"] = {
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Search words",
    },
    ["<leader>fo"] = {
      function()
        require("telescope.builtin").live_grep { hidden = true, grep_open_files = true }
      end,
      desc = "Search words in open files",
    },
    ["<leader>s."] = { "<cmd>Telescope resume<cr>", desc = "Resume search" },
    ["<leader>so"] = {
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Search history",
    },
  },
  -- terminal mappings
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,

    ["<c-q>"] = { "<c-\\><c-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<c-\\><c-n>:q<cr>", desc = "Terminal quit" },
  },
}
