vim.api.nvim_create_user_command('RailsServer', function()
  -- Create a new terminal buffer
  vim.cmd 'terminal'

  -- Send the rails server command
  vim.fn.chansend(vim.b.terminal_job_id, 'rails server\n')

  -- Rename the buffer
  vim.api.nvim_buf_set_name(0, 'rails server')
end, {})

-- Map <leader>rs to the command
vim.keymap.set('n', '<leader>rs', ':RailsServer<CR>', { silent = true })

vim.api.nvim_create_user_command('RailsConsole', function()
  -- Create a new terminal buffer
  vim.cmd 'terminal'

  -- Send the rails console command
  vim.fn.chansend(vim.b.terminal_job_id, 'rails console\n')

  -- Rename the buffer
  vim.api.nvim_buf_set_name(0, 'rails console')
end, {})

-- Map <leader>rc to the command
vim.keymap.set('n', '<leader>rc', ':RailsConsole<CR>', { silent = true })

return {}
