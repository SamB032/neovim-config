require "nvchad.mappings"

local opts = { noremap = true, silent = true }

-- Tree sitter
vim.keymap.set("n","<C-m>", ":NvimTreeFocus<CR>", opts)
vim.keymap.set("v", "<C-m>", ":NvimTreeFocus<CR>", opts)

-- Disable copy on cut
vim.keymap.set("n", "x", '"_x')

-- Disable arrow keys and tab key
for _, mode in pairs({ 'n', 'i', 'v', 'x' }) do
    for _, key in pairs({ '<Up>', '<Down>', '<Left>', '<Right>', '<Tab>' }) do
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
