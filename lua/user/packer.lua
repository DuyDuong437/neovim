-- This file can be loaded by calling `lua require('plugins')` from your init.vimpac
-- Only required if you have packer configured as `opt`pac
vim.cmd [[packadd packer.nvim]]
--------------------------------------------------------------------------------------------------------------- Packer
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
--/////////////////////////////////////////////////////packer

--------------------------------------------------------------------------------------------------------------- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'},
    { "nvim-telescope/telescope-live-grep-args.nvim" }},
    config = function()
    require("telescope").load_extension("live_grep_args")
  end
}
--------------------------------------------------------------------------------------------------------------- Colorscheme
  -- use({ 'rose-pine/neovim', as = 'rose-pine' })
  use "EdenEast/nightfox.nvim" -- Packer

--------------------------------------------------------------------------------------------------------------- Treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

--------------------------------------------------------------------------------------------------------------- Undotree
 use 'mbbill/undotree'

--------------------------------------------------------------------------------------------------------------- LSP Management >> lsp-zero 
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

--------------------------------------------------------------------------------------------------------------- Auto Pairs + Auto Close Tag
use 'm4xshen/autoclose.nvim'
use 'windwp/nvim-ts-autotag'
--------------------------------------------------------------------------------------------------------------- Raibow Delimiters
use 'HiPhish/rainbow-delimiters.nvim'

--------------------------------------------------------------------------------------------------------------- Motion For Tag + Pairs >> nvim-surround
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

--------------------------------------------------------------------------------------------------------------- Context Comment >> nvim-ts-context-commentstring
use ('JoosepAlviste/nvim-ts-context-commentstring')
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
--------------------------------------------------------------------------------------------------------------- Git Intergration >> vim-fugitive
use ('tpope/vim-fugitive')

--------------------------------------------------------------------------------------------------------------- Folder Tree >> nvim-tree
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
--Barbar neovim
-- use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
-- use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
-- use 'romgrk/barbar.nvim'
--------------------------------------------------------------------------------------------------------------- Tab Bar Management >> tabline
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'
--------------------------------------------------------------------------------------------------------------- Toggle Terminal >> toggleterm
use ("akinsho/toggleterm.nvim")

--------------------------------------------------------------------------------------------------------------- Status Line >> lualine
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
--------------------------------------------------------------------------------------------------------------- Indent Line >> indent-blankline
use ("lukas-reineke/indent-blankline.nvim")

--------------------------------------------------------------------------------------------------------------- Search & Replace >> search-replace
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

--------------------------------------------------------------------------------------------------------------- Match Word Highlight >> vim-illuminate
use('RRethy/vim-illuminate')

--------------------------------------------------------------------------------------------------------------- Auto Save >> auto-save
use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
		 }
	end,
})
 --------------------------------------------------------------------------------------------------------------- Code Runner >> code_runner
use 'CRAG666/code_runner.nvim'


--------------------------------------------------------------------------------------------------------------- Advanced Motion >> leap
use 'ggandor/leap.nvim'

--------------------------------------------------------------------------------------------------------------- Copilot
use { "zbirenbaum/copilot.lua" }

--------------------------------------------------------------------------------------------------------------- Scroll Bar >> nvim-scrollbar (gitsigns + nvim-hlslens)
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
        -- hlslens config overrides
    })
  end,
}


--------------------------------------------------------------------------------------------------------------- Auto Indent >> guess-indent
use {
  'nmac427/guess-indent.nvim',
  config = function() require('guess-indent').setup {} end,
}
--------------------------------------------------------------------------------------------------------------- Auto Indent When Move Block >> move
  use ('fedepujol/move.nvim')
--------------------------------------------------------------------------------------------------------------- Command Autocompletion >> wilder
use {
  'gelguy/wilder.nvim',
  config = function()
  end,
}

--------------------------------------------------------------------------------------------------------------- Keybind Suggestion >> which-key
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1000
    require("which-key").setup {}
  end
}
--------------------------------------------------------------------------------------------------------------- Session Manage >> auto-session
use {
  'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    }
  end
}
--------------------------------------------------------------------------------------------------------------- Window Management >> winshift
use 'sindrets/winshift.nvim'

--------------------------------------------------------------------------------------------------------------- Fold Block >> ufo
use {
  "kevinhwang91/nvim-ufo",
  requires = {
    "kevinhwang91/promise-async",
  {
    "luukvbaal/statuscol.nvim",
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup(
        {
          relculright = true,
          segments = {
            {text = {builtin.foldfunc}, click = "v:lua.ScFa"},
            {text = {"%s"}, click = "v:lua.ScSa"},
            {text = {builtin.lnumfunc, " "}, click = "v:lua.ScLa"}
          }
        }
      )
    end

  }
}
}
---------------------------------------------------------------------------------------------------------------  Breadcrumb >> barbecue 
use({
  "utilyre/barbecue.nvim",
  tag = "*",
  requires = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require("barbecue").setup()
  end,
})

end)
