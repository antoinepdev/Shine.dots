local opt = vim.opt

-- Ui
opt.number = true -- show line number
opt.relativenumber = true -- relative line number
opt.cursorline = true -- highlight the current cursor line
opt.termguicolors = true
opt.background = "dark" -- color schemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

-- Tabs & Indentation
opt.tabstop = 2 -- number of spaces for tabs
opt.shiftwidth = 2 -- number of spaces for each step of (auto)indent
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartcase = true -- Respect case if search pattern has upper case
opt.wrap = false
opt.linebreak = true -- break line in whole words
opt.breakindent = true

-- Search Settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive (ignorecase should be true to work)
-- opt.wrapscan = false -- when the search reaches the end of the file it will not continue at the start

-- Settings
opt.confirm = true -- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`), instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
opt.swapfile = false -- no create swap files
opt.undofile = true -- enable persistent undo
opt.showmode = false -- don't show mode in command line

-- Spelling
opt.spell = true
opt.spelllang = { "es", "en" }

