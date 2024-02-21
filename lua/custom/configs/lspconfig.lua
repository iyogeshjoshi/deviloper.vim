local config = require('plugins.configs.lspconfig')
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfif = require('lspconfig')

local function organize_imports()
  local params = {
    command = '_typescript.organizeImports',
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

lspconfif.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  ini_options = {
    preferences = {
      disableSuggestions = true,
    }
  },
  commands = {
    organizeImports = {
      organize_imports,
      description = 'Organize Imports',
    }
  }
}
