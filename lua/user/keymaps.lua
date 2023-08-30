local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

----------------------------------------------------- Normal ----------------------------------------------------------
--Side bar + Project view
-- keymap('n', '<leader>pv', ':Ex<CR>', opts)
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>w", ":bdelete<cr>:bprevious<cr>", opts)
keymap("n", "<leader>q", ":q!<cr>:bprevious<cr>", opts)
keymap("n", "<leader>c", ":close<cr>", opts)
--Save
keymap("n", "<leader>ss", ":w<CR>", opts)
keymap("n", "<leader>gc", ":G commit -m '", opts)
keymap("n", "<leader>gs", ":G status", opts)
keymap("n", "<leader>gl", ":G log", opts)
keymap("n", "<leader>gp", ":G push origin main", opts)

-- No highlight
keymap("n", "<leader>nh", ":noh<CR>", opts)

-- Indent
keymap("n", "<S-l>", ">>", opts)
keymap("n", "<S-h>", "<<", opts)
-- Move text up and down
keymap("n", "<S-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<S-k>", "<Esc>:m .-2<CR>==", opts)

-- Resize window with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<M-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", "0", opts)
keymap("n", "<M-h>", ":bprevious<CR>", opts)
keymap("n", "<C-l>", "$", opts)
keymap("n", "<C-j>", "10j", opts)
keymap("n", "<C-k>", "10k", opts)

--Copy to clipboard
keymap("v", "<leader>y", "\"+y", opts)

-- Esc
keymap("n", "<ESC>", "<ESC>", opts)

--Folder tree
keymap("n", "<M-e>", ":NvimTreeFocus<CR>", opts)


--Git
keymap("n", "<leader>g", ":G<CR>", opts)

--Cursor focuse move
keymap("n", "<M-j>", "<C-w>j", opts)
keymap("n", "<M-k>", "<C-w>k", opts)
keymap("n", "<M-h>", "<C-w>h", opts)
keymap("n", "<M-l>", "<C-w>l", opts)

-- Add space
vim.api.nvim_set_keymap('n', '<leader>j', [[:set paste<CR>m`o<Esc>``:set nopaste<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', [[:set paste<CR>m`O<Esc>``:set nopaste<CR>]], { noremap = true, silent = true })

------------------------------------------------------------------- Insert ------------------------------------------------------------------------------------
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

------------------------------------------------------------------- Visual ------------------------------------------------------------------------------------
-- Move text up and down
keymap("v", "H", "<gv", opts)
keymap("v", "L", ">gv", opts)
vim.api.nvim_set_keymap('x', 'J', [[:'<,'>m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', [[:'<,'>m '<-2<CR>gv=gv]], { noremap = true, silent = true })

--Paste behavior
keymap("v", "p", '"_dP', opts)

-- Faster selection
keymap("v", "<C-k>", "5k", opts)
keymap("v", "<C-j>", "5j", opts)
keymap("v", "<C-l>", "$", opts)
keymap("v", "<C-h>", "0", opts)

-- Search with selection
keymap("v", "<leader>fw", "y/<C-r>\"<cr>", opts)
keymap("v", "<leader>fe", "y/\\<<C-r>\"\\><cr>", opts)
keymap("n", "<leader>fe", "/\\<\\>", opts)









