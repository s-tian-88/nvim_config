local cmd = vim.cmd
local opt = vim.opt

-- column, raws
opt.colorcolumn = '99'
opt.cursorline = true
opt.number = true
opt.rnu = true

-- tabs & indents
cmd[[
filetype indent on
syntax enable
set nohlsearch

set foldmethod=manual
]]

opt.showtabline = 2
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- cmd'colorscheme onedark'
-- cmd'colorscheme melange'
cmd'colorscheme nordic'
-- cmd'colorscheme gruvbox'
-- cmd'colorscheme tokyonight'
-- cmd'colorscheme rose-pine'
