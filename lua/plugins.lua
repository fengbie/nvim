-- Install Packer automatically if it's not installed (Bootstrapping)
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- Reload configurations if we modify plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Packer.nvim configuration
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Put your plugins here
    -- Monokai theme
    use 'tanvirtin/monokai.nvim'

    -- Neovim coc
    use {
        'neoclide/coc.nvim',
        branch = 'release',
        config = function() require('config.nvim-coc') end
    }
    -- Bufferline
    use {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() require('config.nvim-bufferline') end
    }

    -- Lualine statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require('config.nvim-lualine') end
    }

    -- Nvim-tree file explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function() require('config.nvim-tree') end
    }

    -- Word
    use 'jspringyc/vim-word'

    -- line
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require('config.nvim-line') end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
end)

