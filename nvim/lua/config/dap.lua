local Module = {}

function Module.setup()
	local dap = require("dap")
	local dapui = require("dapui")
	local data_dir = os.getenv("XDG_DATA_HOME") or os.getenv("HOME") .. "/.local/share"

	vim.fn.sign_define('DapBreakpoint', {
		text = "🟥",
		texthl = "",
		linehl = "",
		numhl = "",
	})
	vim.fn.sign_define('DapStopped', {
		text = "▶️",
		texthl = "",
		linehl = "",
		numhl = "",
	})


	vim.keymap.set('n', '<F5>', dap.continue)
	vim.keymap.set('n', '<Shift-F5>', dap.terminate)
	vim.keymap.set('n', '<F10>', dap.step_over)
	vim.keymap.set('n', '<F11>', dap.step_into)
	vim.keymap.set('n', '<F12>', dap.step_out)
	vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end)
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)

	-- CSharp
	dap.adapters.coreclr = {
		type = "executable",
		command = data_dir .. "/debuggers/netcoredbg/netcoredbg",
		args = { '--interpreter=vscode' }
	}

	require('dap.ext.vscode').load_launchjs(nil, { coreclr = { "cs" } })


	dapui.setup({
		icons = {
			expanded = "",
			collapsed = "",
			current_frame = "▸",
 		},
		mappings = {
			-- Use a table to apply multiple mappings
			expand = { "<CR>", "<2-LeftMouse>" },
			open = "o",
			remove = "d",
			edit = "e",
			repl = "r",
			toggle = "t",
		},
		-- Use this to override mappings for specific elements
		element_mappings = {
			-- Example:
			-- stacks = {
			--   open = "<CR>",
			--   expand = "o",
			-- }
		},
		expand_lines = vim.fn.has("nvim-0.7") == 1,
		layouts = {
			{
				elements = {
					--"repl",
					"watches",
					"scopes",
					--"console",
				},
				size = 0.25, -- 25% of total lines
				position = "bottom",
			},
			{
				elements = {
					--{ id = "scopes", size = 0.25 },
					--"breakpoints",
					--"stacks",
					"repl",
				},
				size = 0.40, -- 40 columns
				position = "right",
			},
		},
		controls = {
			enabled = true,
			element = "repl",
			icons = {
				pause = "",
				play = "",
				step_into = "",
				step_over = "",
				step_out = "",
				step_back = "",
				run_last = "↻",
				terminate = "□",
			},
		},
		floating = {
			max_height = nil, -- These can be integers or a float between 0 and 1.
			max_width = nil, -- Floats will be treated as percentage of your screen.
			border = "single", -- Border style. Can be "single", "double" or "rounded"
			mappings = {
				close = { "q", "<Esc>" },
			},
		},
		windows = { indent = 1 },
		render = {
			max_type_length = nil, -- Can be integer or nil.
			max_value_lines = 100, -- Can be integer or nil.
		}
	})

	dap.listeners.after.event_initialized["dapui_config"] = dapui.open
	dap.listeners.before.event_terminated["dapui_config"] = dapui.close
	dap.listeners.before.event_exited["dapui_config"] = dapui.close
end

return Module
