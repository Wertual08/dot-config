vim.opt.tabstop         = 4
vim.opt.softtabstop     = 0
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true
vim.opt.smarttab        = true
vim.opt.rnu             = true
vim.opt.nu              = true
vim.opt.splitright      = true
vim.opt.autoread        = true
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])

vim.cmd([[aunmenu PopUp.How-to\ disable\ mouse]])
vim.cmd([[aunmenu PopUp.-1-]])

vim.keymap.set('n', '<space>t', '<Cmd>ToggleTerm<CR>', {silent = true })

require("setup").setup()

require("config.nvim-tree").setup()
