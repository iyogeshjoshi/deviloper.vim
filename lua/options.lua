require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.expandtab = false			-- convert Tabs to Space
vim.opt.shiftwidth = 2				-- Amount of indent with << and >>
vim.opt.tabstop = 2						-- How many spaces are shown per Tab
vim.opt.softtabstop = 2				-- How many space are appliend when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true			-- Keep indentation from previous line
vim.opt.breakindent = true		-- Enable break indent

vim.opt.number = true					-- Show line numbers
vim.opt.relativenumber = true	-- show relative line numbers
vim.opt.cursorline = true			-- Show line under cursor

vim.opt.undofile = true				-- Store undos between sessions

vim.opt.mouse = 'a'						-- Enable mouse mode

vim.opt.showmode = false			-- Don't show the mode since its already in the satatus line

-- Case-insensitive searching unless \C or one ore more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how nvim will display certain whitespace characters in editor
-- see ':help list' and ':help listchars'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '•', nbsp = '␣'  }

-- Minimum numbers of lines to keep above or below the cursor
vim.opt.scrolloff = 10

