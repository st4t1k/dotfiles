local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Completion plugins
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'onsails/lspkind-nvim'

    -- Navigation plugins
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use "projekt0n/github-nvim-theme"

    -- Dev plugins
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'mattn/emmet-vim'
    use 'cappyzawa/trim.nvim'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    -- Theme plugins
    use 'kyazdani42/nvim-web-devicons'
    use 'rebelot/kanagawa.nvim'

    -- Syntax plugins
    use 'posva/vim-vue'
    use 'nelsyeung/twig.vim'
    use 'jwalton512/vim-blade'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

end)
