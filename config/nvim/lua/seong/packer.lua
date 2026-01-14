-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use('easymotion/vim-easymotion')
	use('myusuf3/numbers.vim')

	use('preservim/tagbar')

	use{'nvim-treesitter/nvim-treesitter', lazy = false, run = ':TSUpdate' }

	use{'rmagatti/auto-session', lazy = false}

	use({
		"stevearc/aerial.nvim",
		config = function()
			require("aerial").setup()
		end,
	})

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
			{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'L3MON4D3/LuaSnip'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'rafamadriz/friendly-snippets'},
	  }
  }

	use("ray-x/lsp_signature.nvim")
	use('honza/vim-snippets')

	-- colors
	use('sainnhe/sonokai')

	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua'

	use 'preservim/nerdtree'
end)
