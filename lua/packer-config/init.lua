return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'folke/tokyonight.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use {'ms-jpq/coq_nvim', branch = 'coq'}
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    use 'github/copilot.vim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
