local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use('nvim-lua/plenary.nvim')
    use('neovim/nvim-lspconfig')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')
    use('hrsh7th/nvim-cmp')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {'axkirillov/easypick.nvim', requires = 'nvim-telescope/telescope.nvim'}
    use {
        "windwp/nvim-autopairs",
        config = function() require('nvim-autopairs').setup {} end
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    if packer_bootstrap then
        require'packer'.sync()
    end
end)
