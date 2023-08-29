-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
--/////////////////////////////////////////////////////

-- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Telescope extension
-- use {
--   "ahmedkhalf/project.nvim",
--   config = function()
--     require("project_nvim").setup {
--       -- your configuration comes here
--       -- or leave it empty to use the default settings
--       -- refer to the configuration section below
--     }
--   end
-- }
--

-- Rose pine
  use({ 'rose-pine/neovim', as = 'rose-pine' })





-- Treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})



--Undotree
 use 'mbbill/undotree'



-- LSP Zero
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

--Auto  Pairs
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}




-- Context Comment
use ('JoosepAlviste/nvim-ts-context-commentstring')
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}



-- Fugitive
use ('tpope/vim-fugitive')
-- Git Glutter
use ('airblade/vim-gitgutter')




-- --Folder Tree
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

-- use {
--   "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     requires = { 
--       "nvim-lua/plenary.nvim",
--       "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--       "MunifTanjim/nui.nvim",
--     }
--   }



--Buffer
-- use ('akinsho/bufferline.nvim')


--Barbar neovim
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'


-- Toggle Terminal
use ("akinsho/toggleterm.nvim")





-- Bottom Line (lua line)
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}



-- Indent line
use ("lukas-reineke/indent-blankline.nvim")




end)



