require "nvchad.mappings"

local map = vim.keymap.set
-- local api = require "nvim-tree.api"

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map("n", "ı", "i")
map("n", "Ğ", "$")
map("n", ";", ",")
map("n", ",", ";")

-- jump up and down
map("n", "i", "<C-d>zz")
map("n", "İ", "<C-u>zz")

-- carry text in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- paste in visual mode
map("x", "<leader>p", '"_dP')

-- ctrl delete in insert mode
map("i", "<C-H>", "<C-W>")

-- lsp actions
map("n", "gf", vim.lsp.buf.code_action)
map("n", "gl", vim.diagnostic.setloclist)

-- Compiler.nvim stuff
-- Open compiler
map("n", "<leader><F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
map(
  "n",
  "<F6>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)

-- Toggle compiler results
map("n", "<F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true }) -- map("i", "<C-H>", "<C-O>dvb")

local nomap = vim.keymap.del
nomap("n", "<leader>ds")
nomap({ "x", "n" }, "gra")
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
-- local function my_on_attach(bufnr)
--   local vimp = require "vimp"
--   local treeapi = require "nvim-tree.api"
--
--   local function opts(desc)
--     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--   end
--
--   -- default mappings
--   treeapi.config.mappings.default_on_attach(bufnr)
--
--   -- custom mappings
--   -- vim.keymap.set('n', '<C-t>', treeapi.tree.change_root_to_parent,        opts('Up'))
--   -- vim.keymap.set('n', '?',     treeapi.tree.toggle_help,                  opts('Help'))
--   -- vim.keymap.del("n", "x")
--   vimp.nnoremap("gx", function()
--     os.execute "explorer.exe"
--   end)
-- end
--
-- require("nvim-tree").setup {
--   ---
--   on_attach = my_on_attach,
--   ---
-- }
-- map('x', '?', api.tree.toggle_help, opts('Help'))

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
