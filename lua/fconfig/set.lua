vim.opt.guicursor = ""
-- Enable true color support
if vim.fn.has("termguicolors") then
    vim.o.termguicolors = true
end
if vim.fn.has('nvim') then
    vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
end
vim.g.NERDTreeGitStatusUseNerdFonts = 1
vim.g.NERDTreeGitStatusUntrackedFilesMode = 'all'
vim.opt.nu = true
vim.opt.relativenumber = true
-- Color schemes
--vim.cmd.colorscheme "catppuccin"
vim.cmd("colorscheme rose-pine")
--vim.cmd[[colorscheme dracula]]
--vim.cmd[[colorscheme dracula-soft]]

vim.api.nvim_set_option('clipboard', 'unnamedplus')
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true 

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"
