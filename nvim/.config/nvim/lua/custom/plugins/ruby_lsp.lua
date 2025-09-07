-- I have multiple versions of ruby, this file will reinstall the ruby lsp
-- if it fails to attach so I can stop doing it manually
vim.api.nvim_create_user_command('RubyLspReinstall', function()
  vim.cmd 'MasonUninstall ruby-lsp'
  vim.defer_fn(function()
    vim.cmd 'MasonInstall ruby-lsp'
    vim.defer_fn(function()
      require('lspconfig').ruby_lsp.setup {}
      vim.notify('ruby-lsp reinstalled and initialized.', vim.log.levels.INFO)
      vim.cmd 'LspStart'
    end, 1000)
  end, 1000)
end, {})
return {}
