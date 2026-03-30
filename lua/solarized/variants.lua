local M = {}

M.contrast = {
  SOFT = 'soft',
  NORMAL = 'normal',
  HARD = 'hard',
}

local variants = {
  ['dark'] = {
    name = 'dark',
    colors_name = 'solarized-dark',
    background = 'dark',
    contrast = M.contrast.NORMAL,
  },
  ['dark-hard'] = {
    name = 'dark-hard',
    colors_name = 'solarized-dark-hard',
    background = 'dark',
    contrast = M.contrast.HARD,
  },
  ['dark-soft'] = {
    name = 'dark-soft',
    colors_name = 'solarized-dark-soft',
    background = 'dark',
    contrast = M.contrast.SOFT,
  },
  ['light'] = {
    name = 'light',
    colors_name = 'solarized-light',
    background = 'light',
    contrast = M.contrast.NORMAL,
  },
  ['light-soft'] = {
    name = 'light-soft',
    colors_name = 'solarized-light-soft',
    background = 'light',
    contrast = M.contrast.SOFT,
  },
  ['light-hard'] = {
    name = 'light-hard',
    colors_name = 'solarized-light-hard',
    background = 'light',
    contrast = M.contrast.HARD,
  },
}

local function normalize(name)
  if not name or name == '' then
    return 'dark'
  end

  return name:gsub('^solarized%-', '')
end

function M.get(name)
  local normalized = normalize(name)
  local variant = variants[normalized]

  if not variant then
    error(('Unknown solarized variant: %s'):format(name), 2)
  end

  return vim.deepcopy(variant)
end

return M
