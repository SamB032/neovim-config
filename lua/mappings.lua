require "nvchad.mappings"

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Open command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Tree sitter
vim.keymap.set("n","<C-m>", ":NvimTreeFocus<CR>", opts)
vim.keymap.set("v", "<C-m>", ":NvimTreeFocus<CR>", opts)

-- Disable copy on cut
vim.keymap.set("n", "x", '"_x')

--HPE Copyright
vim.keymap.set('n', '<leader>pr', '<CR> gg 0 :norm i//Copyright 2024 Hewlett Packard Enterprise Development LP<CR><ESC>')
vim.keymap.set('v', '<leader>pr', '<CR> gg 0 :norm i//Copyright 2024 Hewlett Packard Enterprise Development LP<CR><ESC>')

-- Visual-mode commands:
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

-- Disable arrow keys
for _, mode in pairs({ 'n', 'i', 'v', 'x' }) do
    for _, key in pairs({ '<Up>', '<Down>', '<Left>', '<Right>' }) do
        vim.keymap.set(mode, key, '<nop>')
    end
end

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
