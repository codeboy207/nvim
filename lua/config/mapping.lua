
vim.g.mapleader = " ";
local keymap = vim.keymap;

keymap.set("n", "<leader>e", ":Ex <CR>");

-- spliting the window
keymap.set("n", "<leader>s", ":sp <CR>");
keymap.set("n", "<leader>vs", ":vsp <CR>");

-- Moving around the window
keymap.set("n", "<leader>j", "<C-w>j");
keymap.set("n", "<leader>k", "<C-w>k");
keymap.set("n", "<leader>h", "<C-w>h");
keymap.set("n", "<leader>l", "<C-w>l");

-- Closing window
keymap.set("n", "<leader>w", ":q <CR>");

-- Closing window by forcing
keymap.set("n", "<leader>ww", ":q! <CR>");

-- Creating tab
keymap.set("n", "<leader>t", ":tabnew <CR>");

-- Closing tab
keymap.set("n", "<leader>tw", ":tabclose <CR>");

-- Moving around tabs
keymap.set("n", "<leader>tl", ":tabnext <CR>");
keymap.set("n", "<leader>th", ":tabprevious <CR>");
