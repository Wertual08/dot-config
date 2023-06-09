local Module = {}

function Module.setup()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true

    local api = require("nvim-tree.api")
    vim.keymap.set('n', '<space>v', api.tree.toggle, {})

    local nvimtree = require("nvim-tree")
    nvimtree.setup {
        disable_netrw = true,
        hijack_netrw = true,
        view = {
            width = 50,
            side = "right",
            number = true,
            relativenumber = true,
        },
        filters = {
            custom = { ".git" },
            dotfiles = false,
        },
        actions = {
            open_file = {
                resize_window = true,
            },
        },
        git = {
            ignore = false,
        },
    }
end

return Module
