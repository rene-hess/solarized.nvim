return function(colors, options)
  local normal_bg = options.transparent and colors.none or colors.bg

  return {
    GitSignsAdd = { fg = colors.git.add, bg = normal_bg },
    GitSignsAddInline = { fg = colors.bg, bg = colors.git.add },
    GitSignsAddLn = { bg = colors.git.add_bg },
    GitSignsChange = { fg = colors.git.change, bg = normal_bg },
    GitSignsChangeInline = { fg = colors.bg, bg = colors.git.change },
    GitSignsChangeLn = { bg = colors.git.change_bg },
    GitSignsCurrentLineBlame = { link = 'Comment' },
    GitSignsDelete = { fg = colors.git.delete, bg = normal_bg },
    GitSignsDeleteInline = { fg = colors.bg, bg = colors.git.delete },
    GitSignsDeleteLn = { bg = colors.git.delete_bg },
  }
end
