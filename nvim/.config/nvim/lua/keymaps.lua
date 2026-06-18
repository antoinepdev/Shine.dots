vim.g.mapleader = " " -- set leader key
vim.g.maplocalleader = " " -- set local leader key

local function map(mode, key, cmd, opts)
  local default_opts = {
    silent = true,
    unique = true,
    nowait = true,
    desc = "which_key_ignore",
  }

  if opts == nil then
    opts = default_opts
  else
    opts = vim.tbl_deep_extend("force", default_opts, opts)
  end

  vim.keymap.set(mode, key, cmd, opts)
end

map("n", "<leader>ww", ":w<CR>") -- Write file
map("n", "<leader>wq", ":wq<CR>") -- Write and quit
map("n", "q", ":DeleteCurrentBuffer<CR>") -- Quit
map("n", "<leader>q", ":q<CR>") -- Close Neovim
map("n", "<leader>Q", ":q!<CR>") -- Close Neovim anyway
map("i", "jk", "<ESC>") -- Exit insert mode with jk
map("n", "<ESC>", ":nohl<CR>") -- Disable highlight with ESC
map("i", "<C-h>", "<left>") -- Jump one charcter to the left in insert mode
map("i", "<C-l>", "<ignore>", { unique = false })
map("i", "<C-l>", "<right>", { unique = false }) -- Jump one charcter to the right in insert mode
map("t", "<Esc>", "<C-\\><C-n>") -- Exit terminal mode
map("t", "jk", "<C-\\><C-n>") -- Exit terminal mode with jk
map("n", "U", "<C-r>")
map("n", "<leader>R", ":restart<CR>")

-- Window Management
map("n", "<leader>wh", "<C-w>h", { desc = "Move to left window" })
map("n", "<leader>wl", "<C-w>l", { desc = "Move to right window" })
map("n", "<leader>wj", "<C-w>j", { desc = "Move to bottom window" })
map("n", "<leader>wk", "<C-w>k", { desc = "Move to top window" })
map(
  "n",
  "<leader>ws",
  "<cmd>vsplit<cr><cmd>bprevious<cr><C-w>h",
  { desc = "Move to top window" }
)

-- Delete
map("n", "x", '"_x') -- Delete an charcter without copy
map("v", "x", '"_d') -- Delete selected code without copy
