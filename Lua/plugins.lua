-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --telescope
    use ({
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    })
    --work with telescope (file-browser)
    use { "nvim-telescope/telescope-file-browser.nvim" }

    --cool theme (GRUVBOX)
    use { "ellisonleao/gruvbox.nvim" }

    --NERDTree
    use {
      'nvim-tree/nvim-tree.lua',
       requires = { 'kyazdani42/nvim-web-devicons'},
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    --lsp-zero plugin with requires
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
      }
    }

    --manson (bimba plugin)
    use { "williamboman/mason.nvim" }

    --lualine
    use {
      'nvim-lualine/lualine.nvim',
       requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    --vlime (lisp support)
    use {
        'vlime/vlime',
        config = function()
            rtp = 'vim/'
        end
    }

end)

