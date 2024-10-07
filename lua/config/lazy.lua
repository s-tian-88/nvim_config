-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	{
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    dependencies = {
	      "nvim-lua/plenary.nvim",
	      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	      "MunifTanjim/nui.nvim",
	      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	    }
	},

	{ "nvim-treesitter/nvim-treesitter" },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8' },

	{ "neovim/nvim-lspconfig" },

	{ "catppuccin/nvim" },
	{ "mhartington/oceanic-next" },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

    { 'numToStr/Comment.nvim' },
    { 'cohama/lexima.vim' },

    { 'mattn/emmet-vim' },
    { 'idanarye/breeze.vim' },
    { 'idanarye/breeze.vim' },
    { 'ap/vim-css-color' },
})
