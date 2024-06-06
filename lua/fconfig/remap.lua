vim.g.mapleader = " "
vim.keymap.set("i", "ii", "<Esc>")
vim.keymap.set("n", "ii", "<Esc>")
vim.keymap.set("v", "ii", "<Esc>")

-- NerdTree Keybindings
vim.keymap.set("n", "<M-t>n", " :NERDTreeFocus <CR>")
vim.keymap.set("n", "<M-n>", " :NERDTree<CR>")
vim.keymap.set("n", "<leader>n", " :NERDTreeToggle<CR>")
vim.keymap.set("n", "<M-f>", " :NERDTreeFind<CR>")

-- Next greatest remap ever : asbjornHaland
-- Yank to system clipboad
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Telescope Keybindingso
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--vim.keymap.set('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>"")
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Undotree Toggle
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
--vim.keymap.set("n", "J", "mzJ`z")
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")
--
--vim.keymap.set("n", "<leader>vwm", function()
--    require("vim-with-me").StartVimWithMe()
--end)
--vim.keymap.set("n", "<leader>svwm", function()
--    require("vim-with-me").StopVimWithMe()
--end)
--
---- greatest remap ever
--vim.keymap.set("x", "<leader>p", [["_dP]])
--
--
--vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
--
---- This is going to get me cancelled
--vim.keymap.set("i", "<C-c>", "<Esc>")
--
--vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--
--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--
--vim.keymap.set("n", "<leader>vpp", "<cmd>e /home/cr33p3r/.config/nvim/lua/econfig<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
--
--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--minend)
--
