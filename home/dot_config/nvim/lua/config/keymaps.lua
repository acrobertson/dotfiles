-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local function toggle_list()
  if vim.opt.list:get() then
    vim.cmd("setlocal nolist")
    vim.b.miniindentscope_disable = true
  else
    vim.cmd("setlocal list")
    vim.b.miniindentscope_disable = false
  end
end

-- Disable default bindings I don't need
for _, key in pairs({
  "<S-h>", -- bprev
  "<S-l>", -- bnext
}) do
  vim.keymap.del("n", key)
end

map("n", "<leader>uL", toggle_list, { desc = "Toggle listchars" })

-- neogit
map("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Neogit status" })

-- telescope
map("n", "<leader>f.", "<cmd>Telescope file_browser path=%:p:h<cr>", { desc = "Browse this directory's files" })
map("n", "<leader>su", "<cmd>Telescope undo<cr>", { desc = "Undo" })
