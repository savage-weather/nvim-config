return require("packer").startup(function(use)
	-- Core
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("akinsho/toggleterm.nvim")
	use("easymotion/vim-easymotion")

	-- theme-related
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("gruvbox-community/gruvbox")

	-- Telescope
	use("ThePrimeagen/harpoon")
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- Legacy
	use("wellle/targets.vim")
	use("tpope/vim-surround")
	use("numToStr/Comment.nvim")
	use("mg979/vim-visual-multi")

	-- TreeSitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-autopairs")

	-- CMP Autocomplete
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/nvim-cmp")

	-- LuaSnip
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- use("hrsh7th/cmp-vsnip")
	-- use("hrsh7th/vim-vsnip")
	-- use("hrsh7th/vim-vsnip-integ")

	use("onsails/lspkind-nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")

	use("jose-elias-alvarez/null-ls.nvim")

	use("lukas-reineke/indent-blankline.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- Codi
	use("metakirby5/codi.vim")

	-- SubMode
	use("kana/vim-submode")
end)
