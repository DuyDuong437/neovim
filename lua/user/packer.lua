-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
--/////////////////////////////////////////////////////packer

-- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
-- Colorscheme
  -- use({ 'rose-pine/neovim', as = 'rose-pine' })
  use "EdenEast/nightfox.nvim" -- Packer

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

--Auto Pairs
use 'm4xshen/autoclose.nvim'
use 'windwp/nvim-ts-autotag'
use 'HiPhish/rainbow-delimiters.nvim'

-- Manage surrounded tag
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

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

--Folder Tree
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
--Barbar neovim
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

--Search and replace
use({
  "roobert/search-replace.nvim",
  config = function()
    require("search-replace").setup({
      -- optionally override defaults
      default_replace_single_buffer_options = "gcI",
      default_replace_multi_buffer_options = "egcI",
    })
  end,
})

-- Match word highlight
use('RRethy/vim-illuminate')

-- Auto save
use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})
-- Code runner
use 'CRAG666/code_runner.nvim'


-- Better motion
use 'ggandor/leap.nvim'

-- Copilot
use { "zbirenbaum/copilot.lua" }

-- Scroll bar
use("petertriho/nvim-scrollbar")
use {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup()
    require("scrollbar.handlers.gitsigns").setup()
  end
}
use {
  "kevinhwang91/nvim-hlslens",
  config = function()
    -- require('hlslens').setup() is not required
      require("scrollbar.handlers.search").setup({
        override_lens = function() end,
      })
  end,
}
-- Guess indent
use {
  'nmac427/guess-indent.nvim',
  config = function() require('guess-indent').setup {} end,
}
-- Auto indent when move block
  use ('fedepujol/move.nvim')

-- Commandline Autocompletion
use {
  'gelguy/wilder.nvim',
  config = function()
  end,
}

-- Which Vim for Key Bindings 
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1000
    require("which-key").setup {}
  end
}
-- Session Manage
use {
  'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    }
  end
}
-- Window management
use 'sindrets/winshift.nvim'
end)
