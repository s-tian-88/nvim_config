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
]]
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true


cmd'colorscheme onedark'

