packer = require('packer')

packer.init {
  max_jobs = 16
}

return packer.startup(
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use 'neovim/nvim-lspconfig'

    use {
      'hrsh7th/vim-vsnip',
      requires = { 'hrsh7th/vim-vsnip-integ' }
    }

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
        'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
        'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
        'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
      }
    }
    use {
      'tzachar/cmp-tabnine',
      run = './install.sh',
      requires = 'hrsh7th/nvim-cmp'
    }
  end)
