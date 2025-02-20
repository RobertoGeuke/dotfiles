-- Highlist on search
-- TODO: isn't this already default mode
vim.opt.hlsearch = true

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open [D]iagnostic info in window" })

-- Move to quickfix list
vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>zz", { desc = "Go to prev item in quickfix list" })
vim.keymap.set("n", "<leader>j", "<cmd>cnext<CR>zz", { desc = "Go to next item in quickfix list" })
