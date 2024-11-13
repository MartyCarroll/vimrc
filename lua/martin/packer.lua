-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- -- Only required if you have packer configured as `opt`
local ensure_packer = function()
	  local fn = vim.fn
	    local install_path = fn.stdpath('data')..'~/aur/nvim-packer-git/packer.nvim'
	      if fn.empty(fn.glob(install_path)) > 0 then
		          fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
			      vim.cmd [[packadd packer.nvim]]
			          return true
				    end
				      return false
			      end

			      local packer_bootstrap = ensure_packer()

--
return require('packer').startup(function(use)
--   -- Packer can manage itself

    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-sensible'

    use {
	      'nvim-telescope/telescope.nvim', tag = '0.1.2',
	      -- or                            , branch = '0.1.x',
	      requires = { {'nvim-lua/plenary.nvim'} }
      }

      use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

          use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'L3MON4D3/LuaSnip'},
                        {'rafamadriz/friendly-snippets'},
		}
	}

    use "numToStr/FTerm.nvim"

use {
    'projekt0n/github-nvim-theme',
    }

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use 'nvim-tree/nvim-web-devicons'

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use { 'xiyaowong/transparent.nvim' }


end)
