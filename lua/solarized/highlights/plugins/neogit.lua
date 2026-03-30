return function(colors, options)
  local panel_bg = options.transparent and colors.none or colors.bg_alt

  return {
    NeogitBranch = { fg = colors.syntax.special },
    NeogitDiffAddHighlight = { fg = colors.git.add, bg = colors.diff.add_bg },
    NeogitDiffContextHighlight = { fg = colors.comment, bg = panel_bg },
    NeogitDiffDeleteHighlight = { fg = colors.git.delete, bg = colors.diff.delete_bg },
    NeogitHunkHeader = { fg = colors.fg, bg = panel_bg },
    NeogitHunkHeaderHighlight = { fg = colors.syntax.function_name, bg = colors.diff.text_bg },
    NeogitRemote = { fg = colors.syntax.keyword },
  }
end
