-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'wakatime/vim-wakatime'
  use { "catppuccin/nvim", as = "catppuccin" }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use('nvim-lualine/lualine.nvim')
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}
  use 'romgrk/barbar.nvim'

     use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
	  -- prettier format
      use{
          {'neovim/nvim-lspconfig'},
		  {'jose-elias-alvarez/null-ls.nvim'},
		  {'MunifTanjim/prettier.nvim'},
      }

	 use {
		 'nvim-tree/nvim-tree.lua',
		 requires = {
			 'nvim-tree/nvim-web-devicons', -- optional
		 },
	 }

	 use {
		 'VonHeikemen/lsp-zero.nvim',
		 branch = 'v2.x',
		 requires = {
			 -- LSP Support
			 {'neovim/nvim-lspconfig'},             -- Required
			 {                                      -- Optional
			 'williamboman/mason.nvim',
			 run = function()
				 pcall(vim.cmd, 'MasonUpdate')
			 end,
		 },
		 {'williamboman/mason-lspconfig.nvim'}, -- Optional

		 -- Autocompletion
		 {'hrsh7th/nvim-cmp'},     -- Required
		 {'hrsh7th/cmp-nvim-lsp'}, -- Required
		 {'L3MON4D3/LuaSnip'},     -- Required
	 }
 }
 use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})

 end)
