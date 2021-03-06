return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- auto-pairs
  use 'jiangmiao/auto-pairs'

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}
  
  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- Startify
  use 'mhinz/vim-startify'

  -- one dark theme
  use 'navarasu/onedark.nvim'

  -- nord theme
  use 'shaunsingh/nord.nvim'

  -- onenord theme
  use 'rmehri01/onenord.nvim'

  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- lspconfig
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' }
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'

  -- indent blank lualine
  use 'lukas-reineke/indent-blankline.nvim'

  -- markdown preview
  use {'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end, ft = 'markdown' }
end)
