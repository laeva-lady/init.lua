-- TODO: Clean this mess and put my own keybinds
--      + add my custom function from lvim

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", ";", ":")
vim.keymap.set("v", ";", ":")

-- vim.keymap.set("x", "<leader>p", [["_dP]])
-- vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>") -- define Q as having no actino whatsoever

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- kinda funny thing...
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- reload config
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
