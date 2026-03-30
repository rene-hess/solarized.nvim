return function(colors, options)
  local panel_bg = options.transparent and colors.none or colors.float

  return {
    TelescopeBorder = { fg = colors.border, bg = panel_bg },
    TelescopeMatching = { fg = colors.syntax.function_name, bold = true },
    TelescopeMultiSelection = { fg = colors.syntax.special },
    TelescopeNormal = { fg = colors.fg, bg = panel_bg },
    TelescopePreviewBorder = { link = 'TelescopeBorder' },
    TelescopePreviewNormal = { link = 'TelescopeNormal' },
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.syntax.title, bold = true },
    TelescopePromptBorder = { link = 'TelescopeBorder' },
    TelescopePromptNormal = { link = 'TelescopeNormal' },
    TelescopePromptPrefix = { fg = colors.syntax.keyword, bg = panel_bg },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.syntax.keyword, bold = true },
    TelescopeResultsBorder = { link = 'TelescopeBorder' },
    TelescopeResultsComment = { fg = colors.comment },
    TelescopeResultsNormal = { link = 'TelescopeNormal' },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.syntax.namespace, bold = true },
    TelescopeSelection = { bg = colors.visual },
    TelescopeSelectionCaret = { fg = colors.syntax.keyword, bg = colors.visual },
    TelescopeTitle = { fg = colors.syntax.title, bg = panel_bg, bold = true },
  }
end
