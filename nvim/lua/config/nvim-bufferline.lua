vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- nvim lsp
        diagnostics = "nvim_lsp",
        -- nvim-tree 
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
