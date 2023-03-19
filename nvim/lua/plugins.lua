local Module = {}

function Module.setup(use)
    -- Colorscheme
    use {
        "marko-cerovac/material.nvim",
        config = function()
            vim.g.material_style = "deep ocean"
            vim.cmd("colorscheme material")
        end,
    }

    -- Icons
    use {
      "nvim-tree/nvim-web-devicons",
      config = function()
        require("nvim-web-devicons").setup { default = true }
      end,
    }

    -- Startup screen
    use {
      "goolord/alpha-nvim",
      config = require("config.alpha").setup,
    }

    -- Git
    use {
      "TimUntersberger/neogit",
      requires = "nvim-lua/plenary.nvim",
      config = require("config.neogit").setup,
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        config = require("config.mason").setup,
    }

    use {
        "williamboman/mason-lspconfig.nvim",
        requires = "mason.nvim",
        config = require("config.mason-lspconfig").setup,
    }

    use {
        "neovim/nvim-lspconfig",
        requires = { "mason-lspconfig.nvim", "cmp-nvim-lsp" },
        config = require("config.lsp").setup,
    }

    -- Debugger
    use {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
        config = require("config.dap").setup,
    }

    -- Completion
    use {
        "hrsh7th/cmp-nvim-lsp",
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-emoji",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        },
        event = "InsertEnter",
        opt = true,
        config = require("config.cmp").setup,
    }

    -- Analyzer
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = require("config.treesitter").setup,
    }

    -- Statusbar
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-web-devicons" },
        event = "VimEnter",
        config = require("config.lualine").setup,
    }

    use {
        "SmiteshP/nvim-navic",
        requires = "nvim-lspconfig",
    }

    -- Topbar
    use {
        "akinsho/nvim-bufferline.lua",
        event = "BufReadPre",
        wants = "nvim-web-devicons",
        config = require("config.bufferline").setup,
    }

    -- File search
    use {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = "nvim-lua/plenary.nvim",
        config = require("config.telescope").setup,
    }

    use {
        "nvim-tree/nvim-tree.lua",
        requires = "nvim-web-devicons",
    }
end

return Module
