local M = {}

M.dap = {
  plugin = true,
  n = {
    ['<leader>db'] = {
      '<cmd> DapToggleBreakpoint <CR>',
      'Add breakpoint at a line'
    },
    ['<leader>dr'] = {
      '<cmd> DapContinue <CR>',
      'Run or continue the debugger'
    }
  }
}

return M
