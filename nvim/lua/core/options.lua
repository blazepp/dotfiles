local opt = vim.opt -- conciseness

-- sets the font
opt.guifont = { "JetbrainsMono Nerd Font", "h14" }

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamed")

--split windows
opt.splitright = true
opt.splitbelow = true
