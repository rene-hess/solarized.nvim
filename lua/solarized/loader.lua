local config = require('solarized.config')
local highlights = require('solarized.highlights')
local theme = require('solarized.theme')
local variants = require('solarized.variants')

local M = {}

local function reset(variant)
  vim.g.colors_name = nil
  vim.o.background = variant.background
  vim.cmd('highlight clear')

  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end
end

local function set_terminal_colors(colors)
  for index, value in ipairs(colors.terminal) do
    vim.g['terminal_color_' .. (index - 1)] = value
  end
end

local function apply(highlight_groups)
  for group, spec in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.load(name)
  local options = config.get()
  local variant = variants.get(name)
  local colors = theme.build(variant)

  if type(options.on_colors) == 'function' then
    options.on_colors(colors, variant)
  end

  local highlight_groups = highlights.build(colors, options)

  if type(options.on_highlights) == 'function' then
    options.on_highlights(highlight_groups, colors, variant)
  end

  reset(variant)
  apply(highlight_groups)

  if options.terminal_colors then
    set_terminal_colors(colors)
  end

  vim.g.colors_name = variant.colors_name
end

return M
