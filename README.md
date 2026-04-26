# My Neovim Config 📝

My personal Neovim configuration that uses lazy.nvim as a plugin manager.

## Features

- Plugin manager: lazy.nvim
- LSP (C++, TypeScript, Python, Lua, HTML, CSS, JSON)
- Language-specific editor configuration
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
├── lua
│   ├── config
│   │   ├── diagnostic.lua
│   │   ├── lang/
│   │   ├── lazy.lua
│   │   └── lsp/
│   └── plugins/
└── README.md
```

## Installation
```shell
git clone https://github.com/SSHshadow222/my-nvim-config ~/.config/nvim
nvim
```

