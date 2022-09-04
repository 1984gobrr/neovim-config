if not pcall(require, 'impatient') then
  print 'impatient.nvim not found!'
  return
end

require 'config.plugins'
require 'config.settings'
require 'config.lsp'
