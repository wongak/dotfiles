local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local term = require('harpoon.term')

vim.keymap.set('n', '<leader>s', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

