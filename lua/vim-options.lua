vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-Up>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-Down>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-Right>', ':wincmd l<CR>')

vim.keymap.set('n','tt',':tab split<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
