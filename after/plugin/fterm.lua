require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<C-k>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
