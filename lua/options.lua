local cmd = vim.cmd
local opt = vim.opt

-- column, raws
opt.colorcolumn = '79'
opt.cursorline = true
opt.number = true
opt.rnu = true

-- tabs & indents
cmd[[
filetype indent on
syntax enable
set nohlsearch
]]
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true


cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]

-- cmd'colorscheme onedark'
-- cmd'colorscheme melange'
cmd'colorscheme nordic'
-- cmd'colorscheme gruvbox'
-- cmd'colorscheme tokyonight'
-- cmd'colorscheme dracula'
-- cmd'colorscheme rose-pine'
