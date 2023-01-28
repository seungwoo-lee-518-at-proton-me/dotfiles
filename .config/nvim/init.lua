require('plugins')
-- Set Colorscheme
vim.cmd[[ colorscheme tokyonight-storm ]]

-- Mandatory
vim.wo.number = true
vim.cmd[[ set noexpandtab ]]
vim.cmd[[ set tabstop=4 ]]
vim.cmd[[ set shiftwidth=4 ]]
-- Go Specific Configuration
local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})