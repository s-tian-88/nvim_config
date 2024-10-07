local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

g.tagbar_compact = 1

opt.colorcolumn = '100'
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.splitright = true
opt.splitbelow = true
opt.wrap = false
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

cmd([[
filetype indent plugin on
syntax enable
au BufEnter * set fo-=c fo-=r fo-=o
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set nohlsearch
]])
