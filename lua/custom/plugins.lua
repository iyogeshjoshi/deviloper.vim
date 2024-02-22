local plugins = {
  {
    'sourcegraph/sg.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },

    -- If you have a recent version of lazy.nvim, you don't need to add this!
    build = 'nvim -l build/init.lua',
    config = function()
      require 'custom.configs.sg'
    end
  },
  {
    'mhartington/formatter.nvim',
    event = 'VeryLazy',
    opts = function()
      return require 'custom.configs.formatter'
    end
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
      require 'custom.configs.dap'
      require 'core.utils'.load_mappings('dap')
    end
  },
  {
    'mfussenegger/nvim-lint',
    event = 'VeryLazy',
    config = function()
      require 'custom.configs.lint'
    end
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'eslint-lsp',
        'js-debug-adapter',
        'prettier',
        'typescript-language-server'
      }
    }
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },
}

return plugins
