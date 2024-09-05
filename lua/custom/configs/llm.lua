local M = {
  backend = "ollama",
  model = "codellama",
  -- model = "codellama:7b",
  -- accept_keymap = "<S-CR>",
  -- dismiss_keymap = "<CR>",
  context_window = 400, -- send less context for faster reply
  url = "http://localhost:11434/api/generate",
  request_body = {
    options = {
      temperature = 0.2,
      top_p = 0.95,
    },
  },
  -- enable_suggestions_on_startup = false,
  lsp = {
    bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
  },
}

return M
