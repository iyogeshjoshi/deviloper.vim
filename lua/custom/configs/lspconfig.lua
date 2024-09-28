local config = require('plugins.configs.lspconfig')
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require('lspconfig')

local function organize_imports()
  local params = {
    command = '_typescript.organizeImports',
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

-- lspconfig.tsserver.setup {
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  ini_options = {
    preferences = {
      disableSuggestions = true,
    }
  },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = 'Organize Imports',
    }
  }
}

lspconfig.emmet_language_server.setup({
  filetypes = {
    "astro",
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "php",
    "pug",
    "sass",
    "scss",
    "typescriptreact"
  },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = true,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

-- lspconfig.emmet_ls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {
--     "css",
--     "eruby",
--     "html",
--     "javascript",
--     "javascriptreact",
--     "less",
--     "sass",
--     "scss",
--     "svelte",
--     "pug",
--     "typescriptreact",
--     "vue",
--   },
--   init_options = {
--     html = {
--       options = {
--         -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
--         ["output.selfClosingStyle"] = "xhtml",
--       },
--     },
--   },
-- }
