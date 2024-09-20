local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
-- empty setup using defaults
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 20,
		relativenumber = true,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	respect_buf_cwd = true,
})
require("nvim-tree").setup({ view = { relativenumber = true } })
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
--keymap('n','<C-j>','<C-w>j',opts)
--keymap('n','<C-k>','<C-w>k',opts)
