-- Define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show messages
}

-----------------
-- Normal mode --
-----------------

-- CmakeCode
vim.keymap.set('n', '<F10>', ':make<CR>', opts)

-- CodeCPP
--vim.keymap.set('n', '<F11>', ':gcc -<CR>', opts)

-- WordCount
vim.keymap.set('n', '<A-w>', ':WordCount<CR>', opts)

-- nvimTree
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', opts)

-- Map the 'Enter' key to jump to the next search match
vim.api.nvim_set_keymap('n', '<CR>', 'n', { noremap = true })

-- Bufferline navigation
vim.keymap.set("n", "<F4>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<F5>", ":BufferLineCycleNext<CR>", opts)

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows (delta: 2 lines)
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Set :Q to perform the same function as :q
vim.cmd([[command! -nargs=0 Q :q]])

-- Now, when you input :Q, it will execute the same function as :q to close the current window.

