local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{ import = "lazyvim.plugins.extras.lang.nix" },
		{ import = "lazyvim.plugins.extras.lang.python" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.vscode" },
		{ import = "lazyvim.plugins.extras.linting.eslint" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },
		{
			"scottmckendry/cyberdream.nvim",
			lazy = false,
			priority = 1000,
			opts = function()
				require("cyberdream").setup({
					transparent = true,
				})
				vim.cmd("colorscheme cyberdream")
			end,
		},
	},
})

--[[{
		{
			"catppuccin/nvim",
			lazy = false,
			name = "catppuccin",
			opts = function()
				require("catppuccin").setup({
					transparent_background = true,
				})

				vim.cmd("colorscheme catppuccin")
			end,
		},


	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({
				ui = {
					code_action = "",
				},
				diagnostic = {
					show_code_action = true,
				},
				outline = {
					win_width = 50,
				},
			})
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- optional
			"nvim-tree/nvim-web-devicons", -- optional
		},
	},
}, {

	checker = {
		enable = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
}]]
--
