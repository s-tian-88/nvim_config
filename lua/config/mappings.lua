local map = vim.keymap

vim.g.mapleader = " "

-- NeoTree
map.set('n', '<leader>e', ': Neotree toggle<CR>')

map.set('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map.set('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map.set('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map.set('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})

-- Telescope
local builtin = require('telescope.builtin')
map.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

