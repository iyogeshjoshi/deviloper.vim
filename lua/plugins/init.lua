return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	-- Syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			require 'custom.configs.treesitter'
		end
	},
	{
		'nvim-treesitter/nvim-treesitter-textobjects',
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
		},
		init = function()
			require 'plugins.configs.treesitter-textobjects'
		end
	},

	-- AI IDE Plugins
	{
		'github/copilot.vim',
		event = 'VeryLazy'
	},

	{
		'mhartington/formatter.nvim',
		event = 'VeryLazy',
		opts = function()
			return require 'plugins.configs.formatter'
		end
	},
	{
		'stevearc/dressing.nvim',
		opts = function()
			return require 'plugins.configs.dressing'
		end
	},

	-- debuggers
	{
		'nvim-neotest/nvim-nio'
	},
	{
		'rcarriga/nvim-dap-ui',
		event = 'VeryLazy',
		dependencies = 'mfussenegger/nvim-dap',
		config = function()
			local dap = require('dap')
			local dapui = require('dapui')

			require('dapui').setup()

			dap.listeners.after.event_initialized['dapui_config'] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated['dapui_config'] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited['dapui_config'] = function()
				dapui.close()
			end
		end
	},
	{
		'mfussenegger/nvim-dap',
		config = function()
			require 'plugins.configs.dap'
			require 'core.utils'.load_mappings('dap')
		end
	},

	-- notification UI
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			'MunifTanjim/nui.nvim',
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
		config = function()
			require 'plugins.configs.noice'
		end
	},
}
