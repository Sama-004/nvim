vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<A-1>", ":BufferGoto 1<CR>")
vim.keymap.set("n", "<A-2>", ":BufferGoto 2<CR>")
vim.keymap.set("n", "<A-3>", ":BufferGoto 3<CR>")
vim.keymap.set("n", "<A-4>", ":BufferGoto 4<CR>")
vim.keymap.set("n", "<A-5>", ":BufferGoto 5<CR>")
vim.keymap.set("n", "<A-6>", ":BufferGoto 6<CR>")
vim.keymap.set("n", "<A-7>", ":BufferGoto 7<CR>")
vim.keymap.set("n", "<A-8>", ":BufferGoto 8<CR>")
vim.keymap.set("n", "<A-9>", ":BufferGoto 9<CR>")

vim.keymap.set("n", "<A-,>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<A-.>", ":BufferNext<CR>")
vim.keymap.set("n", "<A-x>", ":BufferClose<CR>")
