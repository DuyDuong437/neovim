local opts = { noremap = true, silent = true }
local no = { noremap = false, silent = false }
---------------------------------------------------------------------------------------------------------------------------------Remap space as leader key
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

------------------------------------------------------------------------------------------------------------------------- Normal Mode ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------ -- Side bar + Project view
vim.api.nvim_set_keymap("n", "<leader>fm", ":Neoformat<cr>", opts)
------------------------------------------------------------------------------------------------------------------------------ -- Side bar + Project view
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>w", ":bdelete!<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>qv", ":quitall<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>c", ":close<cr>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Git
vim.api.nvim_set_keymap("n", "<leader>gg", ":G<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>gc", ":G commit -m '", no)
vim.api.nvim_set_keymap("n", "<leader>gs", ":G status", no)
vim.api.nvim_set_keymap("n", "<leader>gl", ":G log", no)
vim.api.nvim_set_keymap("n", "<leader>gu", ":G push origin main", no)
vim.api.nvim_set_keymap("n", "<leader>gp", ":G pull origin main", no)

--------------------------------------------------------------------------------------------------------------------------------- No highlight
vim.api.nvim_set_keymap("n", "<leader>nh", ":noh<CR>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Indent
vim.api.nvim_set_keymap("n", "<Tab>", ">>", opts)
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", opts)
vim.api.nvim_set_keymap("n", "<S-l>", ">>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", "<<", opts)

vim.api.nvim_set_keymap("n", "<S-j>", ":MoveLine(1)<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-k>", ":MoveLine(-1)<CR>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Resize window with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Navigate buffers
vim.api.nvim_set_keymap("n", "<M-l>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-h>", ":bprevious<CR>", opts)

---------------------------------------------------------------------------------------------------------------------------------Move cursor up down faster farther
vim.api.nvim_set_keymap("n", "<C-j>", "10j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "10k", opts)

--------------------------------------------------------------------------------------------------------------------------------- Move to beginning and end line
vim.api.nvim_set_keymap("n", "<C-h>", "0", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "$", opts)

--------------------------------------------------------------------------------------------------------------------------------- Esc
vim.api.nvim_set_keymap("n", "<ESC>", "<ESC>", opts)
--------------------------------------------------------------------------------------------------------------------------------- Folder tree
vim.api.nvim_set_keymap("n", "<M-e>", ":NvimTreeFocus<CR>", opts)

---------------------------------------------------------------------------------------------------------------------------------Cursor focuse move between window
vim.api.nvim_set_keymap("n", "<M-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<M-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<M-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<M-l>", "<C-w>l", opts)

---------------------------------------------------------------------------------------------------------------------------------Cursor focuse move between window
vim.api.nvim_set_keymap("n", "<M-t>", "<C-w>j", opts)
--------------------------------------------------------------------------------------------------------------------------------- Add space
vim.api.nvim_set_keymap(
	"n",
	"<leader>j",
	[[:set paste<CR>m`o<Esc>``:set nopaste<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>k",
	[[:set paste<CR>m`O<Esc>``:set nopaste<CR>]],
	{ noremap = true, silent = true }
)

------------------------------------------------------------------------------------------------------------------------ Enter where cursor is without leaving normal mode
vim.api.nvim_set_keymap("n", "<leader><CR>", "i<CR><ESC>", opts)
vim.api.nvim_set_keymap("n", "<leader>hh", "i<BS><ESC>l", opts)
vim.api.nvim_set_keymap("n", "<leader>ll", "i<space><ESC>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Search and replace
vim.api.nvim_set_keymap("n", "<leader>fw", 'viwy/<C-r>"<cr>', no)
vim.api.nvim_set_keymap("n", "<leader>fe", 'viwy/<C-r>"\\C<cr>', no)
vim.api.nvim_set_keymap("n", "<leader>rw", 'viwy:%s/<C-R>"//gc<left><left><left>', no)
vim.api.nvim_set_keymap("n", "<leader>re", 'viwy:%s/<C-R>"//gci<left><left><left><left>', no)
vim.api.nvim_set_keymap("n", "<leader>rr", ":%s///gci<left><left><left><left>", no)
vim.api.nvim_set_keymap("n", "<leader>ra", ":cdo $s///g<left><left><left>", no)

--------------------------------------------------------------------------------------------------------------------------------- Run code
vim.api.nvim_set_keymap("n", "<leader>rc", ":RunCode<cr>", no)

--------------------------------------------------------------------------------------------------------------------------------- Move window
vim.api.nvim_set_keymap("n", "<C-w>m", ":WinShift<cr>", no)

--------------------------------------------------------------------------------------------------------------------------------- Select All
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", no)

--------------------------------------------------------------------------------------------------------------------------------- Buffer + Tab move
vim.api.nvim_set_keymap("n", "<M-.>", ":bnext<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-,>", ":bprevious<cr>", opts)

vim.api.nvim_set_keymap("n", "<M-t>", ":tabnew<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-'>", ":tabnext<cr>", opts)
vim.api.nvim_set_keymap("n", "<M-;>", ":tabprevious<cr>", opts)

------------------------------------------------------------------------------------------------------------------------- Insert Mode ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------- Press jk fast to enter
vim.api.nvim_set_keymap("i", "jk", "<ESC>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Move without leaving insert mode
vim.api.nvim_set_keymap("i", "<C-l>", "<right>", opts)
vim.api.nvim_set_keymap("i", "<C-h>", "<left>", opts)
vim.api.nvim_set_keymap("i", "<C-k>", "<up>", opts)
vim.api.nvim_set_keymap("i", "<C-j>", "<down>", opts)

vim.api.nvim_set_keymap("i", "<C-S-l>", "<right>", opts)
vim.api.nvim_set_keymap("i", "<C-S-h>", "<left>", opts)
vim.api.nvim_set_keymap("i", "<C-S-k>", "<up>", opts)
vim.api.nvim_set_keymap("i", "<C-S-j>", "<down>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Delete with ALT and Command
vim.api.nvim_set_keymap("i", "<A-BS>", "<C-w>", opts)
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-U>", opts)

--------------------------------------------------------------------------------------------------------------------------------- Move with ALT without leaving Insert
vim.api.nvim_set_keymap("i", "<A-l>", "<S-right>", opts)
vim.api.nvim_set_keymap("i", "<A-h>", "<S-left>", opts)

vim.api.nvim_set_keymap("i", "<A-S-l>", "<S-right>", opts)
vim.api.nvim_set_keymap("i", "<A-S-h>", "<S-left>", opts)
------------------------------------------------------------------------------------------------------------------------- Visual Mode ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------- Paste behavior

--------------------------------------------------------------------------------------------------------------------------------- Faster selection

vim.api.nvim_set_keymap("v", "<C-k>", "5k", opts)
vim.api.nvim_set_keymap("v", "<C-j>", "5j", opts)
vim.api.nvim_set_keymap("v", "<C-l>", "$", opts)
vim.api.nvim_set_keymap("v", "<C-h>", "0", opts)

--------------------------------------------------------------------------------------------------------------------------------- Search with selection
vim.api.nvim_set_keymap("v", "<leader>fw", 'y/<C-r>"<cr>', no)
vim.api.nvim_set_keymap("v", "<leader>fe", 'y/\\<<C-r>"\\><cr>', no)
vim.api.nvim_set_keymap("v", "<leader>rw", 'y:%s/<C-R>"//gc<left><left><left>', no)
vim.api.nvim_set_keymap("v", "<leader>fe", 'y:%s/<C-R>"//gci<left><left><left><left>', no)

--------------------------------------------------------------------------------------------------------------------------------- Indent
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", opts)
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", opts)

vim.api.nvim_set_keymap("v", "<S-l>", ">gv", opts)
vim.api.nvim_set_keymap("v", "<S-h>", "<gv", opts)

--------------------------------------------------------------------------------------------------------------------------------- Copy to clipboard
vim.api.nvim_set_keymap("v", "y", '"+y', opts)
---------------------------------------------------------------------------------------------------------------------------------
--vim.api.nvim_set_keymap("v", "<leader>p", "\"+p", opts)

--------------------------------------------------------------------------------------------------------------------------------- Move text up and down
vim.api.nvim_set_keymap("v", "<S-k>", ":MoveBlock(-1)<CR>", opts)
vim.api.nvim_set_keymap("v", "<S-j>", ":MoveBlock(1)<CR>", opts)
