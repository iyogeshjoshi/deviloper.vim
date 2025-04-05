---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin', transparent_background = true }
M.plugins = 'custom.plugins'
M.mappings = require 'custom.mappings'

return M
