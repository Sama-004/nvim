local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<Leader>ps", builtin.live_grep, {})
vim.keymap.set("n", "<Leader>s", function()
	builtin.current_buffer_fuzzy_find(
		require("telescope.themes").get_cursor({ winblend = 80, height = 0.9, width = 0.8 })
	)
end, {})
vim.keymap.set("n", "<Leader>d", builtin.diagnostics, {})
vim.keymap.set("n", "<Leader>cd", function()
	builtin.diagnostics({ bufnr = 0 })
end, {})
vim.keymap.set("n", "<Leader>gs", builtin.git_status, {})
vim.keymap.set("n", "<Leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<Leader>gf", builtin.git_bcommits, {})
vim.keymap.set("n", "<Leader>ts", builtin.treesitter, {})

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
			},
			n = {
				["j"] = require("telescope.actions").move_selection_next,
				["k"] = require("telescope.actions").move_selection_previous,
			},
		},
	},
})
