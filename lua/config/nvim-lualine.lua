-- lualine
local lualine = require('lualine')

-- settings lualine
lualine.setup {
    options = {
        theme = 'dracula', -- theme
        icons_enabled = true, 
        section_separators = {'', ''}, 
        component_separators = {'', ''}, 
    },
    extensions = {'fzf', 'nvim-tree'}, 
}

