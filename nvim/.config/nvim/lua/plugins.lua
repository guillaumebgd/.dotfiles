vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    local use = require('packer').use

    use 'wbthomason/packer.nvim'

    -- lsp:
    use 'neovim/nvim-lspconfig'           -- A collection of common configurations for Neovim's built-in language server client.
    use 'williamboman/nvim-lsp-installer' -- ONLY FOR LINUX BUILD. lsp installer.
    use 'nvim-lua/lsp-status.nvim'        -- Generates statusline components for lsp.
    use 'sbdchd/neoformat'                -- Formatter for different file types.
    use 'prettier/vim-prettier'
    -- hightlighting:
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- completion tools:
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'

    -- themes:
    use 'arcticicestudio/nord-vim'
    use 'dkasak/gruvbox'
    use 'dracula/vim'

    -- debugger:
    --use 'puremourning/vimspector'      -- requires python 3

    -- UI:
    use 'travitch/hasksyn'               -- Syntax hightlighting for haskell.
    use 'hoob3rt/lualine.nvim'           -- Configures Neovim statusline easily.
    use 'airblade/vim-gitgutter'         -- +, - and ~ for git diff (added/removed/modified).
    use 'norcalli/nvim-colorizer.lua'    -- Highlights hexadecimal colors with the matching color.
    use 'psliwka/vim-smoothie'           -- Nice and smooth scrolling.
    use 'ntpeters/vim-better-whitespace' -- Highlights every trailing spaces in RED. ':StripWhitespaces' to del them all.
    use 'ryanoasis/vim-devicons'         -- Icons.
    use 'RRethy/vim-illuminate'          -- Highlights other uses of the word under the cursor.
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- Telescope:
    use {
        'nvim-telescope/telescope.nvim',
        require = {'nvim-lua/plenary.nvim'}
    }
    use 'nvim-lua/plenary.nvim'                     -- Telescope dependency for easier lua.
    use 'nvim-lua/popup.nvim'                       -- Floating window add-ons.
    use 'nvim-telescope/telescope-symbols.nvim'     -- Populates Telescope with symbols ':Telescope symbols'.
    use 'nvim-telescope/telescope-media-files.nvim' -- Renders media files (such as images) in Telescope.
    use 'nvim-telescope/telescope-frecency.nvim'    -- Intelligent prioritization for Telescope.

    -- UX:
    use 'tpope/vim-fugitive'    -- Git integration.
    use 'b0o/mapx.nvim'
    use 'windwp/nvim-autopairs' -- Automatically closes parenthesis, brackets...
    use 'numToStr/Comment.nvim'
    use {
        "JoosepAlviste/nvim-ts-context-commentstring",
        event = "BufRead"
    }
    use 'tpope/vim-surround'    -- Use cs\--' to change \--example\-- into 'example', for instance
    use 'wesQ3/vim-windowswap'  -- Swaps window <leader>ww to select and swap
end)
