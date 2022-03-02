return require('packer').startup(function ()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  -- Atome One Dark color scheme
	use 'navarasu/onedark.nvim'

  -- Icons
  require('nvim-web-devicons').setup{
    default = true
  }

	use {
	  'hoob3rt/lualine.nvim',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
	}

  -- Golang tools
  use 'ray-x/go.nvim'

  -- Easy navigation inline
  use 'unblevable/quick-scope'

  -- Tab management
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- NvimTree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
  }

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

  -- Auto pairs bracket
  use 'windwp/nvim-autopairs'

  -- NeoScroll
  use 'karb94/neoscroll.nvim'

  -- Emmet notation
  use 'mattn/emmet-vim'

  use {"akinsho/toggleterm.nvim"}

  use 'pangloss/vim-javascript'

  use 'leafgarland/typescript-vim'

  use 'peitalin/vim-jsx-typescript'

  use "jxnblk/vim-mdx-js"

  use {
    'RRethy/vim-hexokinase',
    run = 'make hexokinase',
  }

  use 'preservim/nerdcommenter'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'williamboman/nvim-lsp-installer'

  -- VSnip
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- LSPKind
  use 'onsails/lspkind-nvim'

  -- LSPSaga
  use {'tami5/lspsaga.nvim', branch = 'nvim6.0'}
end)

