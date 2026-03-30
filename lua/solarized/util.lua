local M = {}

local function clamp(value)
  return math.min(255, math.max(0, value))
end

function M.hex_to_rgb(hex)
  local value = hex:gsub('#', '')

  return tonumber(value:sub(1, 2), 16), tonumber(value:sub(3, 4), 16), tonumber(value:sub(5, 6), 16)
end

function M.rgb_to_hex(red, green, blue)
  return string.format('#%02x%02x%02x', clamp(red), clamp(green), clamp(blue))
end

function M.blend(foreground, background, alpha)
  local fr, fg, fb = M.hex_to_rgb(foreground)
  local br, bg, bb = M.hex_to_rgb(background)

  return M.rgb_to_hex(
    math.floor((alpha * fr) + ((1 - alpha) * br) + 0.5),
    math.floor((alpha * fg) + ((1 - alpha) * bg) + 0.5),
    math.floor((alpha * fb) + ((1 - alpha) * bb) + 0.5)
  )
end

function M.extend(base, extra)
  return vim.tbl_extend('force', base or {}, extra or {})
end

function M.merge(...)
  local args = { ... }
  local result = {}

  for _, value in ipairs(args) do
    if value then
      result = vim.tbl_deep_extend('force', result, value)
    end
  end

  return result
end

return M
