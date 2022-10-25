local fn = vim.fn
local packer_bootstrap
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git',
                                    'clone',
                                    '--depth',
                                    '1',
                                    'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup {
    function(use)
        use 'wbthomason/packer.nvim'
        --theme
        use 'gruvbox-community/gruvbox'
        --tree
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons",
            },
            config = function()
                require("modules.nvimtree").setup()
            end,
        }
        --lsp
        use('onsails/lspkind-nvim')
        use {
            'neovim/nvim-lspconfig',
            config = function()
                require('modules.lspconfig')
            end
        }
        use {
            'nvim-treesitter/nvim-treesitter',
            config = function()
                require('modules.treesitter')
            end
        }
        --autocomplete
        use {
            'hrsh7th/nvim-cmp',
            config = function()
                require('modules.cmp')
            end
        }
        use 'hrsh7th/cmp-nvim-lsp'
        use 'L3MON4D3/LuaSnip'
        use 'ray-x/lsp_signature.nvim'

        if packer_bootstrap then
            require('packer').sync()
        end
    end,

    -- packer config
    log = { level = 'info' },
    config = {
        display = {
            prompt_border = 'single',
        },
        profile = {
            enable = true,
            threshold = 0,
        },
    },
}
