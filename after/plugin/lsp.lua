local lsp = require("lsp-zero")
lsp.preset("recommended")

-- Fix Undefined global 'vim'
--lsp.nvim_workspace()
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-j>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-k>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})
lsp.setup()
