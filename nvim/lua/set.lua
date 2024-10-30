-- Disbale LSP logs since the log file grows rather quickly
vim.lsp.set_log_level("off")

-- Fix buggy node-watch
vim.opt.backupcopy = "yes"

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- No nerd font installed
vim.g.have_nerd_font = false

-- Relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show mode, already shown in status line
vim.opt.showmode = false

-- Sync clipboard between OS and nvim
-- TODO: Make sure this works cross ssh
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
-- TODO: install undotree
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time (default of 4000ms is too long)
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 500

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
