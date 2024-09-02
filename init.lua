require("sama")

vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
--vim.api.nvim_set_keymap('v', 'kj', '<Esc>', { noremap = true })
--vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap("v", "<Leader>", "<Esc>", { noremap = true })
-- Map '(' to '()' and move cursor inside the parentheses
vim.api.nvim_set_keymap("i", "(", "()<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "{", "{}<Left>", { noremap = true })
vim.api.nvim_set_keymap("i", "[", "[]<Left>", { noremap = true })
