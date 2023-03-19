local Module = {}

function Module.setup()
	local lspconfig = require("lspconfig")

	local opts = { noremap = true, silent = true }
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

	local on_attach = function(client, bufnr)
		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

		local bufopts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
		vim.keymap.set('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, bufopts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
		vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

		if client.server_capabilities.documentSymbolProvider then
			require("nvim-navic").attach(client, bufnr)
		end
	end

	-- Diagnostic signs
	local diagnostic_signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}
	for _, sign in ipairs(diagnostic_signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = sign.name })
	end


	local lsp_flags = {
		debounce_text_changes = 150,
	}
	local capabilities = require('cmp_nvim_lsp').default_capabilities()

	lspconfig['gopls'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	lspconfig['html'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	lspconfig['jsonls'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	lspconfig['pyright'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	lspconfig['lua_ls'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
					path = vim.split(package.path, ";"),
				},
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						[vim.fn.expand "$VIMRUNTIME/lua"] = true,
						[vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
					},
				},
			},
		},
	}
	lspconfig['vimls'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	lspconfig['tsserver'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	lspconfig['omnisharp'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,

		enable_editorconfig_support = true,

		enable_ms_build_load_projects_on_demand = false,

		enable_roslyn_analyzers = false,

		organize_imports_on_format = true,

		enable_import_completion = true,

		sdk_include_prereleases = true,

		analyze_open_documents_only = false,
	}
	lspconfig['rust_analyzer'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
		settings = {
			["rust-analyzer"] = {}
		}
	}
	lspconfig['kotlin_language_server'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
end

return Module
