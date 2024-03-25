vim.g.mapleader = " "
vim.keymap.set("n", "<leader>op", vim.cmd.Ex)
vim.opt.clipboard = "unnamedplus"
vim.wo.number = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "C-3", ":norm I#<CR>")
vim.keymap.set("n", "<leader>dln", ":setlocal nonumber norelativenumber<CR>")
-- vim.keymap.set("n", "<leader>t", ':vs | te<CR>^WL<CR>')
vim.api.nvim_set_keymap('n', '<leader>t', ':vnew +terminal | resize 40 | wincmd L<CR>', {noremap = true, silent = true})

