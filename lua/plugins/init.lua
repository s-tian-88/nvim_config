local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'idanarye/breeze.vim'
    use 'alvan/vim-closetag'
    use 'ap/vim-css-color'

    use 'joshdick/onedark.vim'
    use "savq/melange-nvim"
    use 'AlexvZyl/nordic.nvim'
    use "ellisonleao/gruvbox.nvim"
    use "folke/tokyonight.nvim"
    use 'Mofiqul/dracula.nvim'
    use "shaunsingh/solarized.nvim"
    use "rose-pine/neovim"

    use {
        'mattn/emmet-vim',
        config = function()
            require('plugins.emmet')
        end
    }
    use 'nvim-lua/plenary.nvim'
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lsp')
        end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use {
        'windwp/nvim-autopairs',
        config = function()
            require("nvim-autopairs").setup()
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('plugins.lualine')
        end
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('plugins.treesitter') 
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('plugins.telescope')
        end
    }

    if packer_bootstrap then
        require('packer').sync()
    end

end)
