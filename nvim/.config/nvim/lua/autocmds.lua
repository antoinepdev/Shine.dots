vim.api.nvim_create_autocmd("UIEnter", {
  desc = "Synchronize nvim clipboard with system clipboard",
  callback = function() vim.o.clipboard = "unnamedplus" end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  callback = function() vim.hl.on_yank() end,
})

