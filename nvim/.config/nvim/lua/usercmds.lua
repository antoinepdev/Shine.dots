vim.api.nvim_create_user_command("DeleteCurrentBuffer", function()
  local current_buffer = vim.api.nvim_get_current_buf()
  local listed_buffers = vim.fn.getbufinfo({ buflisted = 1 })
  if #listed_buffers < 2 then
    vim.cmd("quit")
  else
    vim.api.nvim_buf_delete(current_buffer, {})
  end
end, {})
