local util = require('solarized.util')

return function(colors, options)
  return util.merge(
    require('solarized.highlights.plugins.blink')(colors, options),
    require('solarized.highlights.plugins.cmp')(colors, options),
    require('solarized.highlights.plugins.gitsigns')(colors, options),
    require('solarized.highlights.plugins.neogit')(colors, options),
    require('solarized.highlights.plugins.telescope')(colors, options)
  )
end
