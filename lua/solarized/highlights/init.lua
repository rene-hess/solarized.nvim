local util = require('solarized.util')

local M = {}

function M.build(colors, options)
  return util.merge(
    require('solarized.highlights.editor')(colors, options),
    require('solarized.highlights.syntax')(colors, options),
    require('solarized.highlights.treesitter')(colors, options),
    require('solarized.highlights.lsp')(colors, options),
    require('solarized.highlights.plugins')(colors, options)
  )
end

return M
