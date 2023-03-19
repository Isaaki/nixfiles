require("isaaki/settings")
require("isaaki/remap")

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
	-- Basic plugins (No Config)
	"JoosepAlviste/nvim-ts-context-commentstring",
	"lewis6991/impatient.nvim",
	{ "mg979/vim-visual-multi", branch = "master" },
	"vim-scripts/ReplaceWithRegister",

	-- Plugins with configurations
	require("isaaki/plugins/comment"),
	require("isaaki/plugins/eyeliner"),
	require("isaaki/plugins/indent-tools"),
	require("isaaki/plugins/surround"),
	require("isaaki/plugins/textobjects"),
	require("isaaki/plugins/treesitter"),
	require("isaaki/plugins/whichkey"),
	require("isaaki/plugins/neodev"),

	if not vim.g.vscode then
		use(require("isaaki/plugins/autopairs"))
		use(require("isaaki/plugins/bufferline"))
		use(require("isaaki/plugins/colors"))
		use(require("isaaki/plugins/nvim-cmp"))
		use(require("isaaki/plugins/harpoon"))
		use(require("isaaki/plugins/lsp"))
		use(require("isaaki/plugins/lualine"))
		use(require("isaaki/plugins/telescope"))
		use(require("isaaki/plugins/undotree"))
		use(require("isaaki/plugins/trouble"))
		use(require("isaaki/plugins/toggleterm"))
		use(require("isaaki/plugins/project"))
		use(require("isaaki/plugins/gitsigns"))
	end

