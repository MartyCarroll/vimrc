vim.g.mapleader = " "

-- :au BufAdd,BufNewFile * nested tab sball

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected
-- vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Don't get dizzy
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

-- This is pretty fun
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- Tabs
vim.keymap.set("n", "<leader>tc", vim.cmd.tabc)
vim.keymap.set("n", "<leader>to", vim.cmd.tabo)
vim.keymap.set("n", "<leader>tt", "<cmd>tab split<CR>")

vim.keymap.set("n", "<leader>gd", "<C-w><C-]><C-w>T")

vim.keymap.set("n", "<leader>h", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>tabnext<CR>")

vim.keymap.set("n", "<leader>1", "1gt")
vim.keymap.set("n", "<leader>2", "2gt")
vim.keymap.set("n", "<leader>3", "3gt")
vim.keymap.set("n", "<leader>4", "4gt")
vim.keymap.set("n", "<leader>5", "5gt")
vim.keymap.set("n", "<leader>6", "6gt")
vim.keymap.set("n", "<leader>7", "7gt")
vim.keymap.set("n", "<leader>8", "8gt")
vim.keymap.set("n", "<leader>9", "9gt")
vim.keymap.set("n", "<leader>0", "<cmd>tablast<CR>")

-- :lua vim.diagnostic.open_float()

vim.keymap.set("n", "<S-w>", ":lua vim.diagnostic.open_float()<CR>")

--  Quickfix make idk

vim.keymap.set("n", "<leader>qm", ":make -j8 -C %:h | cw<CR>")
vim.keymap.set("n", "<leader>qt", ":make test -j8 -C %:h | cw<CR>")
vim.keymap.set("n", "<leader>qd", ":make distclean -j8 -C %:h | cw<CR>")

vim.keymap.set("n", "<leader>qn", ":cn<CR>")
vim.keymap.set("n", "<leader>qp", ":cp<CR>")

--  Jump to the next/previous error/warning
vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)
