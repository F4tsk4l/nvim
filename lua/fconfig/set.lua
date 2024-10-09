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
vim.spell.spelllang = 'en_us'
-- Color schemes
--vim.cmd.colorscheme "catppuccin"
vim.cmd("colorscheme rose-pine")
--vim.cmd[[colorscheme dracula]]
--vim.cmd[[colorscheme dracula-soft]]
--TODO:
vim.api.nvim_set_option('clipboard', 'unnamedplus')
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
----------
--TODO:-COMMENTS KEYBINDINGS
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
end, { desc = "Next error/warning todo comment" })
-----------
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
