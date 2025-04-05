local plugins = {
  {
    'stevearc/dressing.nvim',
    opts = function()
      return require 'custom.configs.dressing'
    end
  },
  --[[ {
    "Exafunction/codeium.nvim",
    event = 'BufEnter',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require 'custom.configs.codeium'
    end
  }, ]]
  -- AI Plugins --
  {
    'nvim-neotest/nvim-nio'
  },
  -- {
  --   'lewis6991/hover.nvim',
  --   config = function()
  --     require 'custom.configs.hover'
  --   end
  -- },
  --[[{
    'sourcegraph/sg.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },

    -- If you have a recent version of lazy.nvim, you don't need to add this!
    build = 'nvim -l build/init.lua',
    config = function()
      require 'custom.configs.sg'
    end
  },]]
  -- enabling Ollama autosuggesion
  --[[ { 'huggingface/llm-ls' },
  {
    'huggingface/llm.nvim',
    event = 'VeryLazy',
    dependencies = { 'huggingface/llm-ls' },
    opts = function()
      return require 'custom.configs.llm'
    end
  }, ]]
  -- enabling github copilot
  {
    'github/copilot.vim',
    event = 'VeryLazy'
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
  -- {
  --   'mfussenegger/nvim-lint',
  --   event = 'VeryLazy',
  --   config = function()
  --     require 'custom.configs.lint'
  --   end
  -- },
  -- LSP formatter
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require 'custom.configs.conform'
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'eslint-lsp',
        'js-debug-adapter',
        'prettier',
        'typescript-language-server',
        'emmet-language-server',
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
      require 'custom.configs.noice'
    end
  },
}

return plugins
