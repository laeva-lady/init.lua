-- TODO: Clean this mess and put my own keybinds
--      + add my custom function from lvim

vim.g.mapleader = " "



local set = vim.keymap.set

set("n", "<leader>pv", vim.cmd.Ex)




set("n", "!", ":!")
set("n", ";", ":")
set("v", ";", ":")

set("n", "<C-s>", ":w<CR>")
set("n", "<C-h>", "10h")
set("n", "<C-j>", "10j")
set("n", "<C-k>", "10k")
set("n", "<C-l>", "10l")

set("i", "<C-c>", "<Esc>")

set("n", "<leader>o", ":Files<CR>", { desc = "Open fzf" })
set("n", "<leader>f", vim.lsp.buf.format, {desc="format"})

set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", {desc="make it rain"});


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
        vim.fn.system("okular.exe " .. vim.fn.shellescape(file) .. " &")
    end,
    {
        desc = "Open file with Okular",
        nargs = 1,     -- Require one argument (the file name)
        complete = "file", -- Use file name completion
    }
)

-- vim.keymap.set("n", "<C-9>", ":Removeregisterednurse<CR>")
-- vim.keymap.set("n", "<C-0>", ":SelectAll<CR>")

set("n", "<leader>re", removeRN)
set("n", "<leader>sa", selectALL)

set("n", "<leader>mk", ":make<CR>")
