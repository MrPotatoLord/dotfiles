-- local M = {}

-- M.on_attach = function(bufnr)
--   local api = require("nvim-tree.api")
--   -- Call NvChad's default on_attach if available
--   local ok, default_conf = pcall(require, "nvchad.configs.nvimtree")
--   if ok and default_conf.on_attach then
--     default_conf.on_attach(bufnr)
--   end

--   vim.keymap.set('n', 'x', function()
--     local node = api.tree.get_node_under_cursor()
--     if node and node.absolute_path then
--       vim.cmd("split | terminal cat " .. vim.fn.fnameescape(node.absolute_path))
--     end
--   end, { buffer = bufnr, noremap = true, silent = true, desc = "Cat file in terminal" })
-- end

-- return M