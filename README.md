# Dotfiles, Programs and Dependencies

This repo contains dotbot as a submodule for managing dotfiles. Aditionally, it also contains bash scripts for installing programs and dependencies that I use on my working machine.

![Project Banner](docs/media/images/dotfiles-banner.jpg)

## Features

Implemented:

- [x] zshell config
- [x] alacritty config
- [x] lfcd script
- [x] powerlevel10k zsh theme config
- [x] tmux config

Left to Implement:

- [] Ubuntu post install script
- [] Neovim config
- [] Telescope config
- [] Custom icons for lazygit using Nerd Font
- [] Alacritty config for tmux keybinds

## Neovim

Plugin List:

- _wbthomason/packer.nvim_
  - A plugin manager for Neovim.
- _svrana/neosolarized.nvim_
  - A true color, solarized dark colorscheme.
- _nvim-lualine/lualine.nvim_
  - Status line.
- _onsails/lspkind-nvim_
  - VSCode like pictograms.
- _L3MON4D3/LuaSnip_
  - Snippet engine.
- _hrsh7th/nvim-cmp_
  - A completion engine plugin.
- _hrsh7th/cmp-nvim-lsp_
  - nvim-cmp source for built-in LSP.
- _hrsh7th/cmp-buffer_
  - nvim-cmp source for buffer words.
- _neovim/nvim-lspconfig_
  - Neovim's built-in LSp configuration.
- _jose-elias-alvarez/null-ls.nvim_
  - Use Neovim as a language server.
- _MunifTanjim/prettier.nvim_
  - Prettier plugin for Neovim's built-in LSP client
- _williamboman/mason.nvim_
  - Portable package manager for LSP servers, DAP servers, linters, and formatters.
- _williamboman/mason-lspconfig.nvim_
  - Lspconfig extension for mason.nvim.
- _glepnir/lspsaga.nvim_
  - A highly performant UI for LSP.
- _nvim-treesitter_
  - Treesitter configurations and abstraction layer.
- _kyazdani42/nvim-web-devicons_
  - Lua fork of vim-web-devicons.
- _telescope.nvim_
  - A highly extendable fuzzy finder over lists.
- _telescope-file-browser.nvim_
  - File Browser extension for Telescope.
- _windwp/nvim-autopairs_
  - Autopairs
- _windwp/nvim-ts-autotag_
  - Use treesitter to auto close and auto rename html tag.
- _norcalli/nvim-colorized.lua_
  - A high-performance color highlighter.
- _akinosho/nvim-bufferline.lua_
  - A snazzy bufferline.
- _lewis6991/gitsigns.nvim_
  - Git integration for buffers.
- _dinhhuy258/git.nvim_
  - A simple clone of the plugin vim-fugitive.

Note: The config files are written in Lua.
