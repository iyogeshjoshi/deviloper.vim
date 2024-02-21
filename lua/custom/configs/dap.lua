local dap = require('dap')

dap.adapters['pwa_node'] = {
  type = 'server',
  host = '127.0.0.1',
  port = 8123,
  executable = {
    command = 'js-debug-adpater'
  }
}

for _, language in ipairs { 'typescript', 'javascript' } do
  dap.configurations[language] = {
    {
      type = 'pwa-node',
      request = 'launch',
      name = 'Launch file',
      program = '${file}',
      cwd = '${workspaceFolder}',
      runtimeExecutable = 'node',
    },
  }
end
