vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader><leader>", ":noh<CR>")

vim.keymap.set("n", "<c-k", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l", ":wincmd l<CR>")

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 1,
}
