local Variants = require('solarized.variants')
local util = require('solarized.util')

local M = {}

local anchors = {
  base03 = '#002b36',
  base02 = '#073642',
  base01 = '#586e75',
  base00 = '#657b83',
  base0 = '#839496',
  base1 = '#93a1a1',
  base2 = '#eee8d5',
  base3 = '#fdf6e3',
  yellow = '#b58900',
  orange = '#cb4b16',
  red = '#dc322f',
  magenta = '#d33682',
  violet = '#6c71c4',
  blue = '#268bd2',
  cyan = '#2aa198',
  green = '#859900',
}

local function build_dark(contrast)
  local bg = anchors.base03
  local bg_alt = anchors.base02
  local float = anchors.base02

  if contrast == Variants.contrast.SOFT then
    bg = util.blend(anchors.base02, anchors.base03, 0.35)
    bg_alt = util.blend(anchors.base02, bg, 0.6)
    float = util.blend(anchors.base02, bg_alt, 0.75)
  elseif contrast == Variants.contrast.HARD then
    bg = util.blend(anchors.base03, '#000000', 0.7)
    bg_alt = util.blend(anchors.base02, bg, 0.45)
    float = util.blend(anchors.base02, bg_alt, 0.65)
  end

  local palette = vim.tbl_extend('force', anchors, {
    none = 'NONE',
    bg = bg,
    bg_alt = bg_alt,
    float = float,
    fg = anchors.base0,
    fg_alt = anchors.base1,
    fg_idle = anchors.base01,
    fg_subtle = anchors.base00,
    comment = anchors.base01,
    border = util.blend(anchors.base01, bg_alt, contrast == Variants.contrast.HARD and 0.24 or 0.3),
    gutter = util.blend(anchors.base01, bg, contrast == Variants.contrast.HARD and 0.6 or 0.55),
    cursorline = util.blend(
      anchors.base01,
      bg,
      contrast == Variants.contrast.SOFT and 0.08 or contrast == Variants.contrast.HARD and 0.16 or 0.12
    ),
    selection = util.blend(
      anchors.blue,
      bg,
      contrast == Variants.contrast.SOFT and 0.14 or contrast == Variants.contrast.HARD and 0.24 or 0.2
    ),
    visual = util.blend(
      anchors.blue,
      bg,
      contrast == Variants.contrast.SOFT and 0.18 or contrast == Variants.contrast.HARD and 0.28 or 0.24
    ),
    search = util.blend(
      anchors.yellow,
      bg,
      contrast == Variants.contrast.SOFT and 0.18 or contrast == Variants.contrast.HARD and 0.26 or 0.22
    ),
    match = util.blend(
      anchors.cyan,
      bg,
      contrast == Variants.contrast.SOFT and 0.18 or contrast == Variants.contrast.HARD and 0.3 or 0.26
    ),
    nontext = util.blend(anchors.base01, bg, contrast == Variants.contrast.HARD and 0.4 or 0.35),
    subtle = util.blend(anchors.base01, bg, contrast == Variants.contrast.HARD and 0.22 or 0.18),
  })

  palette.terminal = {
    bg_alt,
    anchors.red,
    anchors.green,
    anchors.yellow,
    anchors.blue,
    anchors.magenta,
    anchors.cyan,
    anchors.base1,
    anchors.base01,
    anchors.orange,
    util.blend(anchors.green, anchors.base3, 0.72),
    util.blend(anchors.yellow, anchors.base3, 0.72),
    util.blend(anchors.blue, anchors.base3, 0.72),
    util.blend(anchors.violet, anchors.base3, 0.72),
    util.blend(anchors.cyan, anchors.base3, 0.72),
    anchors.base0,
  }

  return palette
end

local function build_light(contrast)
  local bg = anchors.base3
  local bg_alt = anchors.base2

  if contrast == Variants.contrast.SOFT then
    bg = util.blend(anchors.base2, anchors.base3, 0.35)
    bg_alt = util.blend(anchors.base2, bg, 0.6)
  elseif contrast == Variants.contrast.HARD then
    bg = util.blend(anchors.base3, '#ffffff', 0.6)
    bg_alt = util.blend(anchors.base2, bg, 0.4)
  end

  local palette = vim.tbl_extend('force', anchors, {
    none = 'NONE',
    bg = bg,
    bg_alt = bg_alt,
    float = bg_alt,
    fg = anchors.base00,
    fg_alt = anchors.base01,
    fg_idle = anchors.base0,
    fg_subtle = anchors.base1,
    comment = anchors.base1,
    border = util.blend(
      anchors.base01,
      bg_alt,
      contrast == Variants.contrast.HARD and 0.24 or contrast == Variants.contrast.SOFT and 0.14 or 0.18
    ),
    gutter = util.blend(
      anchors.base01,
      bg,
      contrast == Variants.contrast.HARD and 0.38 or contrast == Variants.contrast.SOFT and 0.5 or 0.45
    ),
    cursorline = util.blend(
      anchors.base2,
      bg,
      contrast == Variants.contrast.HARD and 0.78 or contrast == Variants.contrast.SOFT and 0.55 or 0.65
    ),
    selection = util.blend(
      anchors.blue,
      bg,
      contrast == Variants.contrast.HARD and 0.13 or contrast == Variants.contrast.SOFT and 0.08 or 0.1
    ),
    visual = util.blend(
      anchors.blue,
      bg,
      contrast == Variants.contrast.HARD and 0.17 or contrast == Variants.contrast.SOFT and 0.12 or 0.14
    ),
    search = util.blend(
      anchors.yellow,
      bg,
      contrast == Variants.contrast.HARD and 0.19 or contrast == Variants.contrast.SOFT and 0.12 or 0.16
    ),
    match = util.blend(
      anchors.cyan,
      bg,
      contrast == Variants.contrast.HARD and 0.21 or contrast == Variants.contrast.SOFT and 0.14 or 0.18
    ),
    nontext = util.blend(
      anchors.base1,
      bg,
      contrast == Variants.contrast.HARD and 0.4 or contrast == Variants.contrast.SOFT and 0.5 or 0.45
    ),
    subtle = util.blend(
      anchors.base1,
      bg,
      contrast == Variants.contrast.HARD and 0.16 or contrast == Variants.contrast.SOFT and 0.1 or 0.12
    ),
  })

  palette.terminal = {
    bg_alt,
    anchors.red,
    anchors.green,
    anchors.yellow,
    anchors.blue,
    anchors.magenta,
    anchors.cyan,
    anchors.base01,
    anchors.base1,
    anchors.orange,
    util.blend(anchors.green, anchors.base03, 0.72),
    util.blend(anchors.yellow, anchors.base03, 0.72),
    util.blend(anchors.blue, anchors.base03, 0.72),
    util.blend(anchors.violet, anchors.base03, 0.72),
    util.blend(anchors.cyan, anchors.base03, 0.72),
    anchors.base00,
  }

  return palette
end

function M.build(variant)
  if variant.background == 'light' then
    return build_light(variant.contrast)
  end

  return build_dark(variant.contrast)
end

return M
