local config = require('solarized.config')
local loader = require('solarized.loader')

local M = {}

function M.setup(options)
  config.setup(options)
end

function M.load(variant)
  loader.load(variant)
end

return M
