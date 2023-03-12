-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.maplocalleader = " "

local opt = vim.opt

-- opt.autoindent = false
-- opt.smartindent = false
opt.cindent = true
opt.number = true
opt.expandtab = false
opt.wrap = true
--opt.wrapmargin = 80
opt.tabstop = 2
opt.shiftwidth = 2
opt.textwidth = 80
