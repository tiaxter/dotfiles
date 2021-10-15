return require('packer').startup(function ()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  -- Atome One Dark color scheme
	use 'navarasu/onedark.nvim'

  -- Nvim Icons with correct colors
  use 'kyazdani42/nvim-web-devicons'

	use {
	  'hoob3rt/lualine.nvim',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
	}

  -- Autocomplete
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  -- Golang tools
	use 'fatih/vim-go'

  -- Easy navigation inline
  use 'unblevable/quick-scope'

  -- Tab management
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- NvimTree
  use 'kyazdani42/nvim-tree.lua'

  -- Dashboard NVIM
  use 'glepnir/dashboard-nvim'

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-lua/popup.nvim'}
    }
  }
end)
