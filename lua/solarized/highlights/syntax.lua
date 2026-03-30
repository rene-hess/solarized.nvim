local util = require('solarized.util')

return function(colors, options)
  local styles = options.styles

  return {
    Bold = { bold = true },
    Boolean = { fg = colors.syntax.boolean },
    Character = { fg = colors.syntax.character },
    Comment = util.extend({ fg = colors.syntax.comment }, styles.comments),
    Conditional = util.extend({ fg = colors.syntax.keyword }, styles.keywords),
    Constant = { fg = colors.syntax.constant },
    Debug = { fg = colors.diag.error },
    Define = { fg = colors.syntax.preproc },
    Delimiter = { fg = colors.syntax.punctuation },
    Error = { fg = colors.diag.error, bold = true },
    Exception = util.extend({ fg = colors.syntax.keyword }, styles.keywords),
    Float = { fg = colors.syntax.number },
    Function = util.extend({ fg = colors.syntax.function_name }, styles.functions),
    Identifier = util.extend({ fg = colors.syntax.variable }, styles.variables),
    Include = { fg = colors.syntax.preproc },
    Italic = { italic = true },
    Keyword = util.extend({ fg = colors.syntax.keyword }, styles.keywords),
    Label = { fg = colors.syntax.keyword },
    Macro = { fg = colors.syntax.preproc },
    Number = { fg = colors.syntax.number },
    Operator = { fg = colors.syntax.operator },
    PreCondit = { fg = colors.syntax.preproc },
    PreProc = { fg = colors.syntax.preproc },
    Repeat = util.extend({ fg = colors.syntax.keyword }, styles.keywords),
    Special = { fg = colors.syntax.special },
    SpecialChar = { fg = colors.syntax.special },
    SpecialComment = util.extend({ fg = colors.syntax.comment }, styles.comments),
    Statement = util.extend({ fg = colors.syntax.keyword }, styles.keywords),
    StorageClass = util.extend({ fg = colors.syntax.type }, styles.types),
    String = { fg = colors.syntax.string },
    Structure = util.extend({ fg = colors.syntax.type }, styles.types),
    Tag = { fg = colors.syntax.tag },
    Todo = { fg = colors.bg, bg = colors.syntax.title, bold = true },
    Type = util.extend({ fg = colors.syntax.type }, styles.types),
    Typedef = util.extend({ fg = colors.syntax.type }, styles.types),
    Underlined = { fg = colors.syntax.uri, underline = true },
  }
end
