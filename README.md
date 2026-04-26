# My Neovim Config

My personal Neovim configuration that uses lazy.nvim as a plugin manager.

## Features

- Plugin manager: lazy.nvim
- LSP (C++, TypeScript, Python, Lua, HTML, CSS, JSON)
- Autocompletion (nvim-cmp)
- Git integration (gitsigns)
- Telescope
- nvim-tree
- Themes (GitHub, Tokyonight)

## Structure

```shell
.
├── init.lua
├── lazy-lock.json
└── lua/
    ├── config/
    │   ├── diagnostic.lua
    │   ├── lazy.lua
    │   └── lsp/
    └── plugins/
```

## Installation

```shell
git clone https://github.com/SSHshadow222/my-nvim-config ~/.config/nvim
nvim
```

