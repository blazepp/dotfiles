local map = vim.keymap.set -- conciseness
local quiet = { silent = true }

-- sets mapleader
vim.g.mapleader = " "

-- general keymaps
map("n", "x", '"_x') -- deletes a character without adding it to the clipboard
map("n", "<leader>nh", ":nohl<CR>", quiet) -- clears highlights
map("n", "<leader>r", ":so %<CR>", quiet) -- reload config without restarting nvim
map("n", "<leader>s", ":w<CR>", quiet) -- fast saving
map("n", "<leader>q", ":q<CR>", quiet) -- closes current window

-- split windows
map("n", "<leader>sv", "<C-w>v") -- split window vertically
map("n", "<leader>sh", "<C-w>s") -- split window horizontally
map("n", "<leader>cv", "<C-w>t<C-w>H") -- change horizontal to vertical
map("n", "<leader>ch", "<C-w>t<C-w>K") -- change vertical to horizontal
map("n", "<leader>se", "<C-w>=") -- make split windows equal width and height
map("n", "<leader>sx", ":close<CR>", quiet) -- close current split window

-- resize splits
map("n", "<C-k>", ":resize -2<CR>", quiet)
map("n", "<C-j>", ":resize +2<CR>", quiet)
map("n", "<C-h>", ":vertical resize -2<CR>", quiet)
map("n", "<C-l>", ":vertical resize +2<CR>", quiet)

-- move around splits
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")

-- tabs
map("n", "<leader>to", ":tabnew<CR>", quiet) -- open new tab
map("n", "<leader>tx", ":tabclose<CR>", quiet) -- close current tab
map("n", "<leader>tn", ":tabn<CR>", quiet) --  go to next tab
map("n", "<leader>tp", ":tabp<CR>", quiet) --  go to previous tab

-- buffers
map("n", "<S-l>", ":bnext<CR>", quiet)
map("n", "<S-h>", ":bprevious<CR>", quiet)
