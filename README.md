# solarized.nvim

A Neovim plugin of the Solarized colorscheme
[https://ethanschoonover.com/solarized/](https://ethanschoonover.com/solarized/).

There are already some solarized Neovim plugins, so why add another one:

- I want different versions (light, dark, different contrast) available at the
  same time without changing the config.
- I disliked some color choices in the existing plugins I tried.

This plugin adds the following variants:

- `solarized-dark`
- `solarized-dark-hard`
- `solarized-light`
- `solarized-light-soft`
- `solarized-light-hard`
- `solarized-dark-soft`

## Installation

With `vim.pack` (require Neovim 0.12+):

```lua
vim.pack.add { { src = 'https://github.com/rene-hess/solarized.nvim' } }
vim.cmd("colorscheme solarized-dark-hard")
```


