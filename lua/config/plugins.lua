local ok, packer = pcall(require, 'packer')
if not ok then
  print 'packer.nvim not found!'
  return
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'

  use 'neovim/nvim-lspconfig'

  use "ellisonleao/gruvbox.nvim"

  if packer_bootstrap then
    require('packer').sync()
  end
end)
