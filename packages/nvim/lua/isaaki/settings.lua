vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.cursorline = true

vim.opt.splitright = true

-- Disable comment on newline
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
	end,
})

-- Highlight on yank
vim.api.nvim_exec(
	[[
    augroup YankHighlight
      autocmd!
      autocmd TextYankPost * silent! lua vim.highlight.on_yank()
    augroup end
  ]],
	false
)

if vim.fn.has("wsl") == 1 then
	vim.api.nvim_exec(
		[[
    let g:clipboard = {
        \   'name': 'win32yank-wsl',
        \   'copy': {
        \      '+': 'win32yank.exe -i --crlf',
        \      '*': 'win32yank.exe -i --crlf',
        \    },
        \   'paste': {
        \      '+': 'win32yank.exe -o --lf',
        \      '*': 'win32yank.exe -o --lf',
        \   },
        \   'cache_enabled': 0,
        \ }
  ]],
		true
	)
end
