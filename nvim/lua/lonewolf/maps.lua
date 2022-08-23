local keymap = vim.keymap
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move text up and down
keymap.set("n", "<M-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap.set("n", "<M-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down
keymap.set("v", "<M-j>", ":m .+1<CR>==", opts)
keymap.set("v", "<M-k>", ":m .-2<CR>==", opts)
keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<M-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<M-k>", ":move '<-2<CR>gv-gv", opts)

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap.set("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap.set("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap.set("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
