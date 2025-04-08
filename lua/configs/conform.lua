local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    typescript = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    markdown = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    yaml = { "prettierd", "prettier", stop_after_first = true },
    json = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    html = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    graphql = { "prettierd", "prettier", stop_after_first = true },
  },
  formatters = {
    -- You can customize some of the format options for the filetype (:help conform.format)
    prettier = { args = { "--tab-width", 2 } },
  },
  format_on_save = {
    lsp_fallback = true, -- Use LSP if available
    async = false,       -- Runs formatters asynchronously
    timeout = 500,       -- Timeout in ms
  }
}

return options
