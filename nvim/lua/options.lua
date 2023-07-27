--python
vim.g.python3_host_prog = vim.fn.expand('~/.conda/envs/nvim/bin/python3')

-- Use system clipboard for copying and pasting
vim.opt.clipboard = 'unnamedplus'

-- Set the completion options for the popup menu
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

-- Allow the mouse to be used in Neovim
vim.opt.mouse = 'a'

-- Tab settings
vim.opt.tabstop = 4         -- Number of visual spaces per TAB
vim.opt.softtabstop = 4     -- Number of spaces in a tab when editing
vim.opt.shiftwidth = 4      -- Insert 4 spaces when using the TAB key
vim.opt.expandtab = true    -- Convert tabs to spaces, mainly for Python

-- User Interface (UI) configuration
vim.opt.number = true           -- Show absolute line numbers
vim.opt.relativenumber = false  -- Do not add relative line numbers on the left side
vim.opt.cursorline = true       -- Highlight the line under the cursor horizontally
vim.opt.splitbelow = true       -- Open new vertical splits at the bottom
vim.opt.splitright = true       -- Open new horizontal splits on the right
vim.opt.termguicolors = true -- (Commented out) Enable 24-bit RGB color in the TUI
vim.opt.showmode = false        -- We are experienced; we don't need the "-- INSERT --" mode hint

-- Searching settings
vim.opt.incsearch = true    -- Incremental search as characters are entered
vim.opt.hlsearch = true    -- Do not highlight matches
vim.opt.ignorecase = true   -- Ignore case in searches by default
vim.opt.smartcase = true    -- But make it case-sensitive if an uppercase character is entered

-- File settings
vim.o.history = 3000           -- Number of lines of command-line history to remember
vim.o.encoding = 'utf-8'       -- Set the character encoding to UTF-8
vim.cmd('syntax enable')       -- Enable syntax highlighting
vim.o.undofile = true          -- Enable persistent undo
vim.o.swapfile = false         -- Disable swap files
local home = os.getenv('HOME')
vim.o.undodir = home .. '/.vim/.undo//'    -- Set the directory for undo files
vim.o.backupdir = home .. '/.vim/.backup//'  -- Set the directory for backup files
vim.o.directory = home .. '/.vim/.swp//'     -- Set the directory for swap files

-- Initialize a variable to toggle input method
vim.g.input_toggle = 1

-- Switch to the English input method
function Fcitx2en()
    local input_status = vim.fn.system("fcitx5-remote")
    if input_status == "2\n" then
        vim.g.input_toggle = 1
        vim.fn.system("fcitx5-remote -c")
    end
end

-- Switch to the Chinese input method
function Fcitx2zh()
    local input_status = vim.fn.system("fcitx5-remote")
    if input_status ~= "2\n" then
        vim.fn.system("fcitx5-remote -o")
        vim.g.input_toggle = 0
    end
end

-- Set the 'ttimeoutlen' option to 150 (unit: milliseconds)
vim.o.timeoutlen = 100

-- Switch to the English input method when exiting insert mode
vim.cmd("autocmd InsertLeave * lua Fcitx2en()")

-- Switch to the Chinese input method when entering insert mode
vim.cmd("autocmd InsertEnter * lua Fcitx2en()")

