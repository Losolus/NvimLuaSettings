local g = vim.g
local o = vim.o

--set nvim lanuage
--vim.api.nvim_exec('language en_US')
--colorscheme = gruvbox
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--cmd('syntax on')
vim.api.nvim_command('filetype plugin indent on')
--o.syntax = true

o.termguicolors = true
o.background = 'dark'

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.relativenumber = true
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
-- o.autoindent = true
o.wrap = true
o.tabstop = 4
o.shiftwidth = 4

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

o.autochdir = true

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
