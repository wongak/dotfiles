vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 0

vim.opt.number = true

vim.opt.undofile = true                -- Save undo's after file closes
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undo" -- where to save undo histories
vim.opt.undolevels = 1000         -- How many undos
vim.opt.undoreload = 10000        -- number of lines to save for undo

