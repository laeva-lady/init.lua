require("theprimeagen")

-- system clipboard by default
vim.opt.clipboard = "unnamedplus"





vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.typst", -- Match *.typst files
  callback = function()
    -- Replace the command below with what you want to run
    vim.cmd("make")
  end,
})
