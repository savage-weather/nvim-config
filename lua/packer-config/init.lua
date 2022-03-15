return require("packer").startup(function(use)
	-- Core
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("akinsho/toggleterm.nvim")
	use("justinmk/vim-sneak")

	-- theme-related
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("EdenEast/nightfox.nvim")
	use("gruvbox-community/gruvbox")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Legacy
	use("wellle/targets.vim")
	use("tpope/vim-surround")
	use("numToStr/Comment.nvim")
	use("mg979/vim-visual-multi")
	use("unblevable/quick-scope")

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

	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")

	use("onsails/lspkind-nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")

	use("jose-elias-alvarez/null-ls.nvim")

	use("lukas-reineke/indent-blankline.nvim")
	use("norcalli/nvim-colorizer.lua")
end)
