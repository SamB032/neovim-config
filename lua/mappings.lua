require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n","<C-m>", ":NvimTreeFocus<CR>")
map("v", "<C-m>", ":NvimTreeFocus<CR>")

-- Opening a file
vim.keymap.set('n', '<leader>1', ':vsplit<ESC>')
vim.keymap.set('n', '<leader>2', ':split<ESC>')


--HPE Copyright
vim.keymap.set('n', '<leader>pr', '<CR> :norm i//CPY P<ESC>')
vim.keymap.set('v', '<leader>pr', '<CR> :norm i//CPY <ESC>')

local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands:
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
