vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>nh", ":noh<Cr>")

vim.keymap.set("v", "<C-j>", ":m '>+1<Cr>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<Cr>gv=gv")
