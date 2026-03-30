local palette = require('solarized.palette')
local util = require('solarized.util')

local M = {}

function M.build(variant)
  local p = palette.build(variant)
  local git_add_bg = util.blend(p.green, p.bg, 0.12)
  local git_change_bg = util.blend(p.yellow, p.bg, 0.12)
  local git_delete_bg = util.blend(p.red, p.bg, 0.12)

  return util.merge(p, {
    accent = p.blue,
    git = {
      add = p.green,
      change = p.yellow,
      delete = p.red,
      add_bg = git_add_bg,
      change_bg = git_change_bg,
      delete_bg = git_delete_bg,
    },
    diff = {
      add = p.green,
      change = p.yellow,
      delete = p.red,
      add_bg = git_add_bg,
      change_bg = git_change_bg,
      delete_bg = git_delete_bg,
      text_bg = util.blend(p.blue, p.bg, 0.14),
    },
    diag = {
      error = p.red,
      warn = p.orange,
      info = p.blue,
      hint = p.cyan,
      ok = p.green,
      error_bg = util.blend(p.red, p.bg, 0.1),
      warn_bg = util.blend(p.orange, p.bg, 0.1),
      info_bg = util.blend(p.blue, p.bg, 0.1),
      hint_bg = util.blend(p.cyan, p.bg, 0.1),
      ok_bg = util.blend(p.green, p.bg, 0.1),
    },
    syntax = {
      comment = p.comment,
      constant = p.cyan,
      string = p.cyan,
      character = p.cyan,
      number = p.orange,
      boolean = p.orange,
      function_name = p.blue,
      method = p.blue,
      field = p.fg,
      property = p.fg,
      parameter = p.violet,
      variable = p.fg,
      builtin = p.red,
      keyword = p.green,
      operator = p.green,
      preproc = p.orange,
      type = p.yellow,
      special = p.magenta,
      namespace = p.blue,
      punctuation = p.base01,
      title = p.yellow,
      tag = p.blue,
      attribute = p.yellow,
      uri = p.violet,
    },
  })
end

return M
