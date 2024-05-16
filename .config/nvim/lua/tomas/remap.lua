vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- directory listing

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- move line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- move line up

vim.keymap.set("n", "J", "mzJ`z")             -- join line below with a space
vim.keymap.set("n", "<C-u>", "<C-u>zz")       -- go up a lot of lines
vim.keymap.set("n", "<C-d>", "<C-d>zz")       -- go down a lot of lines
vim.keymap.set("n", "n", "nzzzv")             -- next in search, centered
vim.keymap.set("n", "N", "Nzzzv")             -- previous in search, centered

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy in visual mode
vim.keymap.set("n", "<leader>Y", [["+Y]])          -- copy in normal move

vim.keymap.set("x", "<leader>p", [["_dP]])         -- delete selection to black hole register and paste
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- deletes to black hole register

vim.keymap.set("i", "<C-c>", "<Esc>")              -- exit insert mode

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")              -- new tmux session
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)                                     -- format

vim.keymap.set("n", "<leader>qo", ":copen<CR>")                                          -- open quickfix list
vim.keymap.set("n", "<leader>qc", ":cclose<CR>")                                         -- close quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")                                         -- next quickfix item, centered
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")                                         -- previous quickfix item, centered

vim.keymap.set("n", "<leader>lo", ":lopen<CR>")                                          -- open location list
vim.keymap.set("n", "<leader>lc", ":lclose<CR>")                                         -- close location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")                                     -- next location list item, centered
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")                                     -- previous location list item, centered

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace word under cursor
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })              -- give execution permition to current file

-- indentation
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "<leader><leader>", function() -- source current file
    vim.cmd("so")
end)

