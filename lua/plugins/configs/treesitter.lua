local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = {
		'bash',
		'comment',
		'css',
		'csv',
		'dockerfile',
		'html',
		'javascript',
		'json',
		'jsonc',
		'lua',
		'markdown',
		'python',
		'regex',
		'scss',
		'tsx',
		'typescript',
		'markdown',
		'yaml',
		'vim',
		'vimdoc',
		'heex',
	},

	highlight = {
		enable = true,
		use_languagetree = true,
	},
	auto_install = true,
	sync_install = false,
	indent = { enable = true },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<Enter>", -- set to `false` to disable one of the mappings
			node_incremental = "<Enter>",
			scope_incremental = "<Leader><Enter>",
			node_decremental = "<Backspace>",
		},
	},

	foldmethod = "expr",
	foldexpr = "nvim_treesitter#foldexpr()",
})
