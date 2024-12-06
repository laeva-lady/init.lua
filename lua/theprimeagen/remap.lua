-- TODO: Clean this mess and put my own keybinds
--      + add my custom function from lvim

vim.g.mapleader = " "











vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", "!", ":!")
vim.keymap.set("n", ";", ":")
vim.keymap.set("v", ";", ":")

vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<leader>o", ":Files<CR>")
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





-- commands related to functions
--
local function removeRN()
    vim.cmd([[%s/\r//g]])
end
local function selectALL()
    vim.cmd([[normal! ggVG]])
end

vim.api.nvim_create_user_command("Seratchbuffer", ":e ~/scratch.md", { desc = "open scratch file" })
vim.api.nvim_create_user_command("Chatgptprompt", ":e ~/chatprompt.md", { desc = "open chatgpt file" })
vim.api.nvim_create_user_command("Todoprompt", ":e ~/todoAndNotes.md", { desc = "open todo file" })

vim.api.nvim_create_user_command(
    "Okular",
    function(opts)
        -- Open the file using Okular with the provided argument
        local file = opts.args
        vim.fn.system("silent okular.exe " .. vim.fn.shellescape(file) .. " &")
    end,
    {
        desc = "Open file with Okular",
        nargs = 1,     -- Require one argument (the file name)
        complete = "file", -- Use file name completion
    }
)

-- vim.keymap.set("n", "<C-9>", ":Removeregisterednurse<CR>")
-- vim.keymap.set("n", "<C-0>", ":SelectAll<CR>")

vim.keymap.set("n", "<leader>re", removeRN)
vim.keymap.set("n", "<leader>sa", selectALL)




vim.keymap.set("n", "<leader>mk", ":make<CR>")
