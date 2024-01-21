local keymap = vim.keymap.set
vim.g.mapleader = " "

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })



--- Custom keymaps
-- Centering after ctrl+d/u
keymap('n', '<C-d>', '<C-d>zz', { silent = true })
keymap('n', '<C-u>', '<C-u>zz', { silent = true })

-- Ex



vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



-- These are in the main file, I didn't delete them there yet cause I need to add them to after/plugin/telescope.lua?
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) --project files
--vim.keymap.set('n', '<C-p>', builtin.live_grep, {}) --Git files
--vim.keymap.set('n', '<leader>ps', function()
--builtin.grep_string({search=vim.fn.input("Grep>")});
--end) --project search
