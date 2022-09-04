local g = vim.g
local opt = vim.opt
local disabled_built_ins = {
  'getscript',
  'getscriptPlugin',
  'vimball',
  'vimballPlugin',
  '2html_plugin',
  'logipat',
  'rrhelper',
  'spellfile_plugin',
  'matchit',
}

-- Disable unused features
for _, plugin in pairs(disabled_built_ins) do
  g['loaded_' .. plugin] = 1
end

opt.guifont = 'JetBrainsMono Nerd Font'
opt.fileencoding = 'utf-8'
opt.number = true
opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
