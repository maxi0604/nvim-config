-- Set up relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set up tab width
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Set up case-insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

--Disable showing e. g. --INSERT-- when inserting since lualine does this in a way that doesn't end up fugly
vim.opt.showmode = false

vim.g.vimtex_compiler_method = "tectonic"
