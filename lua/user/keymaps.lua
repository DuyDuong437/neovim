local opts = { noremap = true, silent = true }
--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
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
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>w", ":BufferClose<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>qv", ":quitall<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>c", ":close<cr>", opts)

--Git
vim.api.nvim_set_keymap("n", "<leader>gg", ":G<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>gc", ":G commit -m '", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gs", ":G status",{ noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gl", ":G log", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gu", ":G push origin main",  { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gp", ":G pull origin main", { noremap = false, silent = false })

-- No highlight
vim.api.nvim_set_keymap("n", "<leader>nh", ":noh<CR>", opts)

-- Indent
vim.api.nvim_set_keymap("n", "<S-l>", ">>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", "<<", opts)

-- Move text up and down
vim.api.nvim_set_keymap("n", "<S-j>", "<Esc>:m .+1<CR>==", opts)
vim.api.nvim_set_keymap("n", "<S-k>", "<Esc>:m .-2<CR>==", opts)

-- Resize window with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.api.nvim_set_keymap("n", "<M-l>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-h>", ":bprevious<CR>", opts)

--Move cursor up down faster farther
vim.api.nvim_set_keymap("n", "<C-j>", "10j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "10k", opts)

-- Move to beginning and end line
vim.api.nvim_set_keymap("n", "<C-h>", "0", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "$", opts)

--Copy to clipboard
vim.api.nvim_set_keymap("v", "y", "\"+y", opts)
-- vim.api.nvim_set_keymap("v", "<leader>p", "\"+p", opts)

-- Esc
vim.api.nvim_set_keymap("n", "<ESC>", "<ESC>", opts)

--Folder tree
vim.api.nvim_set_keymap("n", "<M-e>", ":NvimTreeFocus<CR>", opts)

--Cursor focuse move
vim.api.nvim_set_keymap("n", "<M-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<M-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<M-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<M-l>", "<C-w>l", opts)

-- Add space
vim.api.nvim_set_keymap('n', '<leader>j', [[:set paste<CR>m`o<Esc>``:set nopaste<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', [[:set paste<CR>m`O<Esc>``:set nopaste<CR>]], { noremap = true, silent = true })


-- Enter where cursor is without leaving normal mode
vim.api.nvim_set_keymap("n", "<C-cr>", "i<cr><ESC>", opts)

-- Search and replace
vim.api.nvim_set_keymap("n", "<leader>fw", "viwy/<C-r>\"<cr>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>fe", "/\\<\\><>", { noremap = false, silent = false })

--Run code
vim.api.nvim_set_keymap("n", "<leader>rc", ":RunCode<cr>", { noremap = false, silent = false })
------------------------------------------------------------------- Insert ------------------------------------------------------------------------------------
-- Press jk fast to enter
vim.api.nvim_set_keymap("i", "jk", "<ESC>", opts)
vim.api.nvim_set_keymap('i', '<C-l>', '<right>', opts)
vim.api.nvim_set_keymap('i', '<C-h>', '<left>', opts)
vim.api.nvim_set_keymap('i', '<C-j>', '<down>', opts)
vim.api.nvim_set_keymap('i', '<C-k>', '<up>', opts)

------------------------------------------------------------------- Visual ------------------------------------------------------------------------------------
-- Move text up and down
vim.api.nvim_set_keymap("v", "H", "<gv", opts)
vim.api.nvim_set_keymap("v", "L", ">gv", opts)
vim.api.nvim_set_keymap('x', 'J', [[:'<,'>m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', [[:'<,'>m '<-2<CR>gv=gv]], { noremap = true, silent = true })

--Paste behavior
vim.api.nvim_set_keymap("v", "p", '"_dP', opts)

-- Faster selection
vim.api.nvim_set_keymap("v", "<C-k>", "5k", opts)
vim.api.nvim_set_keymap("v", "<C-j>", "5j", opts)
vim.api.nvim_set_keymap("v", "<C-l>", "$", opts)
vim.api.nvim_set_keymap("v", "<C-h>", "0", opts)

-- Search with selection
vim.api.nvim_set_keymap("v", "<leader>fw", "y/<C-r>\"<cr>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("v", "<leader>fe", "y/\\<<C-r>\"\\><cr>", { noremap = false, silent = false })
