local Module = {}

function Module.setup()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', 'ff', builtin.find_files, {})
    vim.keymap.set('n', 'fg', function ()
        builtin.live_grep({ default_text = vim.fn.expand('<cword>') })
    end, {})
    vim.keymap.set('n', 'fb', builtin.buffers, {})
    vim.keymap.set('n', 'fh', builtin.help_tags, {})

    require("telescope").setup{
        defaults = {
            file_ignore_patterns = { "bin", "obj" }
        }
    }
end

return Module
