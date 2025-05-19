require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local api = require "nvim-tree.api"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "İ", "I")
map("n", "Ğ", "$")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
-- map('x', '?', api.tree.toggle_help, opts('Help'))

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
