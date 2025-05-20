vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>nh", ":noh<Cr>")

vim.keymap.set("v", "<C-j>", ":m '>+1<Cr>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<Cr>gv=gv")

vim.keymap.set("n", "<leader>tn", ":tabnext<Cr>")
vim.keymap.set("n", "<leader>tp", ":tabprev<Cr>")

vim.keymap.set("n", "<leader>t1", "1gt")
vim.keymap.set("n", "<leader>t2", "2gt")
vim.keymap.set("n", "<leader>t3", "3gt")
vim.keymap.set("n", "<leader>t4", "4gt")
vim.keymap.set("n", "<leader>t5", "5gt")
