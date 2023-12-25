-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('ThePrimeagen/harpoon')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.api.nvim_command, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'hrsh7th/cmp-vsnip'},
      {'hrsh7th/vim-vsnip'},
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}
    -- treesitter
    use ({
        "nvim-treesitter/nvim-treesitter",
        run = function ( )
            require("nvim-treesitter.install").update({with_sync = true }) end,
    })
    -- auto closing
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    -- dir tree
    use("nvim-tree/nvim-tree.lua")

    -- color schema
    -- use { "bluz71/vim-nightfly-colors", as = "nightfly" }
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use {
        'lewis6991/spellsitter.nvim',
        config = function()
            require('spellsitter').setup()
        end
    }

    use('mbbill/undotree')

     use 'wbthomason/packer.nvim'

    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'
    use 'nvim-lua/plenary.nvim'


end)
