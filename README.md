# My Neovim Config 📝

My personal Neovim configuration that uses lazy.nvim as a plugin manager.

## Requirements

- [Neovim >= 0.9](https://neovim.io/doc/install/)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en/download)
- [A Nerd Font (optional)](https://www.nerdfonts.com/)

## Installation

### macOS / Linux

```shell
git clone https://github.com/SSHshadow222/my-nvim-config ~/.config/nvim
nvim
```

### Windows

```shell
git clone https://github.com/SSHshadow222/my-nvim-config %LOCALAPPDATA%\nvim
nvim
```

## Features

- Plugin manager: lazy.nvim
- LSP (C++, TypeScript, Python, Lua, HTML, CSS, JSON)
- Language-specific editor configuration
- Autocompletion (nvim-cmp)
- Git integration (gitsigns)
- Telescope
- nvim-tree
- Themes (GitHub, Tokyonight)

## Keymaps

| Keymap | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | List open buffers |
| `<leader>fh` | Search help tags |
| `<leader>d` | Show diagnostics |
| `<leader>tt` | Toggle nvim-tree |
| `<leader>to` | Open nvim-tree |
| `<leader>tff` | Reveal current file in nvim-tree |
| `<leader>tr` | Reload nvim-tree |
| `<leader>tc` | Collapse nvim-tree |
| `<leader>gp` | Preview git hunk |
| `<leader>gb` | Git blame |
| `<leader>gtclb` | Toggle current line blame |
| `<CR>` | Confirm completion item |
| `<Tab>` | Select next completion item |
| `<S-Tab>` | Select previous completion item |

## Structure

```shell
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── diagnostic.lua
│   │   ├── lang/
│   │   ├── lazy.lua
│   │   └── lsp/
│   └── plugins/
└── README.md
```
