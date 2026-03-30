local M = {}

M.defaults = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    types = {},
  },
  on_colors = nil,
  on_highlights = nil,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(options)
  M.options = vim.tbl_deep_extend('force', vim.deepcopy(M.defaults), options or {})
end

function M.get()
  return M.options
end

return M
